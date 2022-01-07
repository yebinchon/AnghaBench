
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct cas_tx_desc {int control; int buffer; } ;
struct cas {TYPE_2__** tx_tiny_use; int pdev; struct sk_buff*** tx_skbs; struct cas_tx_desc** init_txds; } ;
struct TYPE_4__ {scalar_t__ used; } ;
struct TYPE_3__ {int nr_frags; } ;


 int CAS_VAL (int ,int ) ;
 int PCI_DMA_TODEVICE ;
 int TX_DESC_BUFLEN ;
 int TX_DESC_RINGN_SIZE (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int le64_to_cpu (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void cas_clean_txd(struct cas *cp, int ring)
{
 struct cas_tx_desc *txd = cp->init_txds[ring];
 struct sk_buff *skb, **skbs = cp->tx_skbs[ring];
 u64 daddr, dlen;
 int i, size;

 size = TX_DESC_RINGN_SIZE(ring);
 for (i = 0; i < size; i++) {
  int frag;

  if (skbs[i] == ((void*)0))
   continue;

  skb = skbs[i];
  skbs[i] = ((void*)0);

  for (frag = 0; frag <= skb_shinfo(skb)->nr_frags; frag++) {
   int ent = i & (size - 1);




   daddr = le64_to_cpu(txd[ent].buffer);
   dlen = CAS_VAL(TX_DESC_BUFLEN,
      le64_to_cpu(txd[ent].control));
   pci_unmap_page(cp->pdev, daddr, dlen,
           PCI_DMA_TODEVICE);

   if (frag != skb_shinfo(skb)->nr_frags) {
    i++;




    ent = i & (size - 1);
    if (cp->tx_tiny_use[ring][ent].used)
     i++;
   }
  }
  dev_kfree_skb_any(skb);
 }


 memset(cp->tx_tiny_use[ring], 0, size*sizeof(*cp->tx_tiny_use[ring]));
}
