
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
typedef int tx_ctx ;
struct TYPE_7__ {int * qs_handle; } ;
struct i40e_vsi {scalar_t__ type; int id; TYPE_4__* back; TYPE_2__ info; scalar_t__ base_queue; } ;
struct i40e_tx_desc {int dummy; } ;
struct i40e_ring {int dma; int count; size_t dcb_tc; scalar_t__ tail; TYPE_5__* ch; scalar_t__ queue_index; scalar_t__ atr_sample_rate; scalar_t__ atr_count; int xsk_umem; struct i40e_vsi* vsi; } ;
struct i40e_hw {int pf_id; scalar_t__ hw_addr; } ;
struct i40e_hmc_obj_txq {int new_context; int base; int qlen; int fd_ena; int timesync_ena; int head_wb_ena; int head_wb_addr; scalar_t__ rdylist_act; void* rdylist; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_6__ {int * qs_handle; } ;
struct TYPE_10__ {scalar_t__ type; int vsi_number; TYPE_1__ info; } ;
struct TYPE_9__ {int flags; TYPE_3__* pdev; scalar_t__ atr_sample_rate; struct i40e_hw hw; } ;
struct TYPE_8__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int I40E_FLAG_FD_ATR_ENABLED ;
 int I40E_FLAG_FD_SB_ENABLED ;
 int I40E_FLAG_PTP ;
 int I40E_QTX_CTL (scalar_t__) ;
 int I40E_QTX_CTL_PF_INDX_MASK ;
 int I40E_QTX_CTL_PF_INDX_SHIFT ;
 int I40E_QTX_CTL_PF_QUEUE ;
 int I40E_QTX_CTL_VFVM_INDX_MASK ;
 int I40E_QTX_CTL_VFVM_INDX_SHIFT ;
 int I40E_QTX_CTL_VM_QUEUE ;
 scalar_t__ I40E_QTX_TAIL (scalar_t__) ;
 scalar_t__ I40E_VSI_FDIR ;
 scalar_t__ I40E_VSI_VMDQ2 ;
 int dev_info (int *,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ i40e_clear_lan_tx_queue_context (struct i40e_hw*,scalar_t__) ;
 int i40e_config_xps_tx_ring (struct i40e_ring*) ;
 int i40e_flush (struct i40e_hw*) ;
 scalar_t__ i40e_set_lan_tx_queue_context (struct i40e_hw*,scalar_t__,struct i40e_hmc_obj_txq*) ;
 int i40e_xsk_umem (struct i40e_ring*) ;
 void* le16_to_cpu (int ) ;
 int memset (struct i40e_hmc_obj_txq*,int ,int) ;
 scalar_t__ ring_is_xdp (struct i40e_ring*) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static int i40e_configure_tx_ring(struct i40e_ring *ring)
{
 struct i40e_vsi *vsi = ring->vsi;
 u16 pf_q = vsi->base_queue + ring->queue_index;
 struct i40e_hw *hw = &vsi->back->hw;
 struct i40e_hmc_obj_txq tx_ctx;
 i40e_status err = 0;
 u32 qtx_ctl = 0;

 if (ring_is_xdp(ring))
  ring->xsk_umem = i40e_xsk_umem(ring);


 if (vsi->back->flags & I40E_FLAG_FD_ATR_ENABLED) {
  ring->atr_sample_rate = vsi->back->atr_sample_rate;
  ring->atr_count = 0;
 } else {
  ring->atr_sample_rate = 0;
 }


 i40e_config_xps_tx_ring(ring);


 memset(&tx_ctx, 0, sizeof(tx_ctx));

 tx_ctx.new_context = 1;
 tx_ctx.base = (ring->dma / 128);
 tx_ctx.qlen = ring->count;
 tx_ctx.fd_ena = !!(vsi->back->flags & (I40E_FLAG_FD_SB_ENABLED |
            I40E_FLAG_FD_ATR_ENABLED));
 tx_ctx.timesync_ena = !!(vsi->back->flags & I40E_FLAG_PTP);

 if (vsi->type != I40E_VSI_FDIR)
  tx_ctx.head_wb_ena = 1;
 tx_ctx.head_wb_addr = ring->dma +
         (ring->count * sizeof(struct i40e_tx_desc));
 if (ring->ch)
  tx_ctx.rdylist =
   le16_to_cpu(ring->ch->info.qs_handle[ring->dcb_tc]);

 else
  tx_ctx.rdylist = le16_to_cpu(vsi->info.qs_handle[ring->dcb_tc]);

 tx_ctx.rdylist_act = 0;


 err = i40e_clear_lan_tx_queue_context(hw, pf_q);
 if (err) {
  dev_info(&vsi->back->pdev->dev,
    "Failed to clear LAN Tx queue context on Tx ring %d (pf_q %d), error: %d\n",
    ring->queue_index, pf_q, err);
  return -ENOMEM;
 }


 err = i40e_set_lan_tx_queue_context(hw, pf_q, &tx_ctx);
 if (err) {
  dev_info(&vsi->back->pdev->dev,
    "Failed to set LAN Tx queue context on Tx ring %d (pf_q %d, error: %d\n",
    ring->queue_index, pf_q, err);
  return -ENOMEM;
 }


 if (ring->ch) {
  if (ring->ch->type == I40E_VSI_VMDQ2)
   qtx_ctl = I40E_QTX_CTL_VM_QUEUE;
  else
   return -EINVAL;

  qtx_ctl |= (ring->ch->vsi_number <<
       I40E_QTX_CTL_VFVM_INDX_SHIFT) &
       I40E_QTX_CTL_VFVM_INDX_MASK;
 } else {
  if (vsi->type == I40E_VSI_VMDQ2) {
   qtx_ctl = I40E_QTX_CTL_VM_QUEUE;
   qtx_ctl |= ((vsi->id) << I40E_QTX_CTL_VFVM_INDX_SHIFT) &
        I40E_QTX_CTL_VFVM_INDX_MASK;
  } else {
   qtx_ctl = I40E_QTX_CTL_PF_QUEUE;
  }
 }

 qtx_ctl |= ((hw->pf_id << I40E_QTX_CTL_PF_INDX_SHIFT) &
      I40E_QTX_CTL_PF_INDX_MASK);
 wr32(hw, I40E_QTX_CTL(pf_q), qtx_ctl);
 i40e_flush(hw);


 ring->tail = hw->hw_addr + I40E_QTX_TAIL(pf_q);

 return 0;
}
