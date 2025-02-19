
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ data_len; scalar_t__ len; int cb; } ;
struct octnic_gather {int list; TYPE_1__* sg; } ;
struct octnet_buf_free_info {struct octnic_gather* g; struct lio* lio; } ;
struct octeon_soft_command {scalar_t__ callback_arg; } ;
struct lio {int * glist_lock; int * glist; TYPE_3__* oct_dev; } ;
typedef int skb_frag_t ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {TYPE_4__* pci_dev; } ;
struct TYPE_6__ {int nr_frags; int * frags; } ;
struct TYPE_5__ {int * ptr; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;
 int pci_unmap_page (TYPE_4__*,int ,int ,int ) ;
 int skb_frag_size (int *) ;
 int skb_iq (TYPE_3__*,struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void free_netsgbuf_with_resp(void *buf)
{
 struct octeon_soft_command *sc;
 struct octnet_buf_free_info *finfo;
 struct sk_buff *skb;
 struct lio *lio;
 struct octnic_gather *g;
 int i, frags, iq;

 sc = (struct octeon_soft_command *)buf;
 skb = (struct sk_buff *)sc->callback_arg;
 finfo = (struct octnet_buf_free_info *)&skb->cb;

 lio = finfo->lio;
 g = finfo->g;
 frags = skb_shinfo(skb)->nr_frags;

 dma_unmap_single(&lio->oct_dev->pci_dev->dev,
    g->sg[0].ptr[0], (skb->len - skb->data_len),
    DMA_TO_DEVICE);

 i = 1;
 while (frags--) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i - 1];

  pci_unmap_page((lio->oct_dev)->pci_dev,
          g->sg[(i >> 2)].ptr[(i & 3)],
          skb_frag_size(frag), DMA_TO_DEVICE);
  i++;
 }

 iq = skb_iq(lio->oct_dev, skb);

 spin_lock(&lio->glist_lock[iq]);
 list_add_tail(&g->list, &lio->glist[iq]);
 spin_unlock(&lio->glist_lock[iq]);


}
