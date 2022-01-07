
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct wil_rx_status_extended {int dummy; } ;
struct wil_rx_status_compressed {int dummy; } ;
struct wil_ring {int dummy; } ;
struct wil6210_priv {int rx_status_ring_order; int rx_buff_id_count; int num_rx_status_rings; int * srings; int rx_buf_len; int use_rx_hw_reordering; scalar_t__ use_compressed_rx_status; struct wil_ring ring_rx; } ;


 int EFAULT ;
 int EINVAL ;
 int WIL6210_MAX_STATUS_RINGS ;
 int WIL_DEFAULT_RX_STATUS_RING_ID ;
 int WIL_RX_SRING_SIZE_ORDER_DEFAULT ;
 int WIL_SRING_SIZE_ORDER_MAX ;
 int WIL_SRING_SIZE_ORDER_MIN ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int,...) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_find_free_sring (struct wil6210_priv*) ;
 int wil_free_rx_buff_arr (struct wil6210_priv*) ;
 int wil_info (struct wil6210_priv*,char*,int,int,int) ;
 int wil_init_rx_buff_arr (struct wil6210_priv*,int) ;
 int wil_init_rx_desc_ring (struct wil6210_priv*,int,int ) ;
 int wil_init_rx_sring (struct wil6210_priv*,int,size_t,int) ;
 int wil_ring_free_edma (struct wil6210_priv*,struct wil_ring*) ;
 int wil_rx_buf_len_init_edma (struct wil6210_priv*) ;
 int wil_rx_refill_edma (struct wil6210_priv*) ;
 int wil_sring_free (struct wil6210_priv*,int *) ;
 int wil_wmi_cfg_def_rx_offload (struct wil6210_priv*,int ) ;

__attribute__((used)) static int wil_rx_init_edma(struct wil6210_priv *wil, uint desc_ring_order)
{
 u16 status_ring_size, desc_ring_size = 1 << desc_ring_order;
 struct wil_ring *ring = &wil->ring_rx;
 int rc;
 size_t elem_size = wil->use_compressed_rx_status ?
  sizeof(struct wil_rx_status_compressed) :
  sizeof(struct wil_rx_status_extended);
 int i;


 if (wil->use_compressed_rx_status && !wil->use_rx_hw_reordering) {
  wil_err(wil,
   "compressed RX status cannot be used with SW reorder\n");
  return -EINVAL;
 }
 if (wil->rx_status_ring_order <= desc_ring_order)

  wil->rx_status_ring_order = desc_ring_order + 1;
 if (wil->rx_buff_id_count <= desc_ring_size)

  wil->rx_buff_id_count = desc_ring_size + 512;
 if (wil->rx_status_ring_order < WIL_SRING_SIZE_ORDER_MIN ||
     wil->rx_status_ring_order > WIL_SRING_SIZE_ORDER_MAX)
  wil->rx_status_ring_order = WIL_RX_SRING_SIZE_ORDER_DEFAULT;

 status_ring_size = 1 << wil->rx_status_ring_order;

 wil_dbg_misc(wil,
       "rx_init, desc_ring_size=%u, status_ring_size=%u, elem_size=%zu\n",
       desc_ring_size, status_ring_size, elem_size);

 wil_rx_buf_len_init_edma(wil);


 if (wil->num_rx_status_rings > WIL6210_MAX_STATUS_RINGS - 1)
  wil->num_rx_status_rings = WIL6210_MAX_STATUS_RINGS - 1;

 wil_dbg_misc(wil, "rx_init: allocate %d status rings\n",
       wil->num_rx_status_rings);

 rc = wil_wmi_cfg_def_rx_offload(wil, wil->rx_buf_len);
 if (rc)
  return rc;


 for (i = 0; i < wil->num_rx_status_rings; i++) {
  int sring_id = wil_find_free_sring(wil);

  if (sring_id < 0) {
   rc = -EFAULT;
   goto err_free_status;
  }
  rc = wil_init_rx_sring(wil, status_ring_size, elem_size,
           sring_id);
  if (rc)
   goto err_free_status;
 }


 rc = wil_init_rx_desc_ring(wil, desc_ring_size,
       WIL_DEFAULT_RX_STATUS_RING_ID);
 if (rc)
  goto err_free_status;

 if (wil->rx_buff_id_count >= status_ring_size) {
  wil_info(wil,
    "rx_buff_id_count %d exceeds sring_size %d. set it to %d\n",
    wil->rx_buff_id_count, status_ring_size,
    status_ring_size - 1);
  wil->rx_buff_id_count = status_ring_size - 1;
 }


 rc = wil_init_rx_buff_arr(wil, wil->rx_buff_id_count);
 if (rc)
  goto err_free_desc;


 rc = wil_rx_refill_edma(wil);
 if (rc)
  goto err_free_rx_buff_arr;

 return 0;
err_free_rx_buff_arr:
 wil_free_rx_buff_arr(wil);
err_free_desc:
 wil_ring_free_edma(wil, ring);
err_free_status:
 for (i = 0; i < wil->num_rx_status_rings; i++)
  wil_sring_free(wil, &wil->srings[i]);

 return rc;
}
