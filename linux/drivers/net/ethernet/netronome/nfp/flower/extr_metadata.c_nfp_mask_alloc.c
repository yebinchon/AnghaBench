
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct circ_buf {size_t head; size_t tail; size_t* buf; } ;
struct TYPE_2__ {scalar_t__ init_unallocated; int * last_used; struct circ_buf mask_id_free_list; } ;
struct nfp_flower_priv {TYPE_1__ mask_ids; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
typedef int ktime_t ;


 int ENOENT ;
 int NFP_FLOWER_MASK_ELEMENT_RS ;
 int NFP_FLOWER_MASK_ENTRY_RS ;
 int NFP_FL_MASK_REUSE_TIME_NS ;
 int ktime_add_ns (int ,int ) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 int memcpy (size_t*,size_t*,int) ;

__attribute__((used)) static int nfp_mask_alloc(struct nfp_app *app, u8 *mask_id)
{
 struct nfp_flower_priv *priv = app->priv;
 ktime_t reuse_timeout;
 struct circ_buf *ring;
 u8 temp_id, freed_id;

 ring = &priv->mask_ids.mask_id_free_list;
 freed_id = NFP_FLOWER_MASK_ENTRY_RS - 1;

 if (priv->mask_ids.init_unallocated > 0) {
  *mask_id = priv->mask_ids.init_unallocated;
  priv->mask_ids.init_unallocated--;
  return 0;
 }


 if (ring->head == ring->tail)
  goto err_not_found;

 memcpy(&temp_id, &ring->buf[ring->tail], NFP_FLOWER_MASK_ELEMENT_RS);
 *mask_id = temp_id;

 reuse_timeout = ktime_add_ns(priv->mask_ids.last_used[*mask_id],
         NFP_FL_MASK_REUSE_TIME_NS);

 if (ktime_before(ktime_get(), reuse_timeout))
  goto err_not_found;

 memcpy(&ring->buf[ring->tail], &freed_id, NFP_FLOWER_MASK_ELEMENT_RS);
 ring->tail = (ring->tail + NFP_FLOWER_MASK_ELEMENT_RS) %
       (NFP_FLOWER_MASK_ENTRY_RS * NFP_FLOWER_MASK_ELEMENT_RS);

 return 0;

err_not_found:
 *mask_id = freed_id;
 return -ENOENT;
}
