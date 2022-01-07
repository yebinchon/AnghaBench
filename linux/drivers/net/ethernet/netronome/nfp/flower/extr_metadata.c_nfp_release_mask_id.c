
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct circ_buf {size_t head; int * buf; int tail; } ;
struct TYPE_2__ {int * last_used; struct circ_buf mask_id_free_list; } ;
struct nfp_flower_priv {TYPE_1__ mask_ids; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 scalar_t__ CIRC_SPACE (size_t,int ,int) ;
 int ENOBUFS ;
 int NFP_FLOWER_MASK_ELEMENT_RS ;
 int NFP_FLOWER_MASK_ENTRY_RS ;
 int ktime_get () ;
 int memcpy (int *,size_t*,int) ;

__attribute__((used)) static int nfp_release_mask_id(struct nfp_app *app, u8 mask_id)
{
 struct nfp_flower_priv *priv = app->priv;
 struct circ_buf *ring;

 ring = &priv->mask_ids.mask_id_free_list;

 if (CIRC_SPACE(ring->head, ring->tail, NFP_FLOWER_MASK_ENTRY_RS) == 0)
  return -ENOBUFS;

 memcpy(&ring->buf[ring->head], &mask_id, NFP_FLOWER_MASK_ELEMENT_RS);
 ring->head = (ring->head + NFP_FLOWER_MASK_ELEMENT_RS) %
       (NFP_FLOWER_MASK_ENTRY_RS * NFP_FLOWER_MASK_ELEMENT_RS);

 priv->mask_ids.last_used[mask_id] = ktime_get();

 return 0;
}
