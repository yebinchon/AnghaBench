
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct s2io_nic {int pdev; } ;
struct fifo_info {int max_txds; scalar_t__ ufo_in_band_v; struct s2io_nic* nic; } ;
struct TxD {scalar_t__ Host_Control; scalar_t__ Buffer_Pointer; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {size_t nr_frags; int * frags; } ;


 int PCI_DMA_TODEVICE ;
 int memset (struct TxD*,int ,int) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int,int ) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *s2io_txdl_getskb(struct fifo_info *fifo_data,
     struct TxD *txdlp, int get_off)
{
 struct s2io_nic *nic = fifo_data->nic;
 struct sk_buff *skb;
 struct TxD *txds;
 u16 j, frg_cnt;

 txds = txdlp;
 if (txds->Host_Control == (u64)(long)fifo_data->ufo_in_band_v) {
  pci_unmap_single(nic->pdev, (dma_addr_t)txds->Buffer_Pointer,
     sizeof(u64), PCI_DMA_TODEVICE);
  txds++;
 }

 skb = (struct sk_buff *)((unsigned long)txds->Host_Control);
 if (!skb) {
  memset(txdlp, 0, (sizeof(struct TxD) * fifo_data->max_txds));
  return ((void*)0);
 }
 pci_unmap_single(nic->pdev, (dma_addr_t)txds->Buffer_Pointer,
    skb_headlen(skb), PCI_DMA_TODEVICE);
 frg_cnt = skb_shinfo(skb)->nr_frags;
 if (frg_cnt) {
  txds++;
  for (j = 0; j < frg_cnt; j++, txds++) {
   const skb_frag_t *frag = &skb_shinfo(skb)->frags[j];
   if (!txds->Buffer_Pointer)
    break;
   pci_unmap_page(nic->pdev,
           (dma_addr_t)txds->Buffer_Pointer,
           skb_frag_size(frag), PCI_DMA_TODEVICE);
  }
 }
 memset(txdlp, 0, (sizeof(struct TxD) * fifo_data->max_txds));
 return skb;
}
