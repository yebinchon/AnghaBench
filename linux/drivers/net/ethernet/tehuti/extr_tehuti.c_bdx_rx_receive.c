
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int ip_summed; int protocol; scalar_t__ data; } ;
struct TYPE_4__ {int pktsz; } ;
struct rxf_fifo {TYPE_1__ m; } ;
struct rxdb {int dummy; } ;
struct TYPE_6__ {int wptr; int rptr; int memsz; int reg_RPTR; scalar_t__ va; int reg_WPTR; } ;
struct rxd_fifo {TYPE_3__ m; } ;
struct rxd_desc {int va_lo; int rxd_vlan; int len; int rxd_val1; } ;
struct rx_map {int dma; struct sk_buff* skb; } ;
struct TYPE_5__ {int rx_bytes; int rx_packets; int rx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct bdx_priv {struct rxf_fifo rxf_fifo0; int pdev; struct net_device* ndev; struct rxdb* rxdb; } ;


 int BDX_ASSERT (int) ;
 int BDX_COPYBREAK ;
 int BDX_MAX_RX_DONE ;
 int CHECKSUM_UNNECESSARY ;
 int CPU_CHIP_SWAP16 (int ) ;
 int CPU_CHIP_SWAP32 (int ) ;
 int DBG (char*,int,...) ;
 int ENTER ;
 int GET_RXD_BC (int ) ;
 int GET_RXD_ERR (int ) ;
 scalar_t__ GET_RXD_PKT_ID (int ) ;
 int NETIF_RX_MUX (struct bdx_priv*,int ,int,struct sk_buff*) ;
 scalar_t__ NET_IP_ALIGN ;
 int PCI_DMA_FROMDEVICE ;
 int READ_REG (struct bdx_priv*,int ) ;
 int RET (int) ;
 int TXF_WPTR_WR_PTR ;
 int WRITE_REG (struct bdx_priv*,int ,int) ;
 int bdx_recycle_skb (struct bdx_priv*,struct rxd_desc*) ;
 int bdx_rx_alloc_skbs (struct bdx_priv*,struct rxf_fifo*) ;
 struct rx_map* bdx_rxdb_addr_elem (struct rxdb*,int ) ;
 int bdx_rxdb_free_elem (struct rxdb*,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int print_rxdd (struct rxd_desc*,int ,int,int) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bdx_rx_receive(struct bdx_priv *priv, struct rxd_fifo *f, int budget)
{
 struct net_device *ndev = priv->ndev;
 struct sk_buff *skb, *skb2;
 struct rxd_desc *rxdd;
 struct rx_map *dm;
 struct rxf_fifo *rxf_fifo;
 int tmp_len, size;
 int done = 0;
 int max_done = BDX_MAX_RX_DONE;
 struct rxdb *db = ((void*)0);

 u32 rxd_val1;
 u16 len;
 u16 rxd_vlan;

 ENTER;
 max_done = budget;

 f->m.wptr = READ_REG(priv, f->m.reg_WPTR) & TXF_WPTR_WR_PTR;

 size = f->m.wptr - f->m.rptr;
 if (size < 0)
  size = f->m.memsz + size;

 while (size > 0) {

  rxdd = (struct rxd_desc *)(f->m.va + f->m.rptr);
  rxd_val1 = CPU_CHIP_SWAP32(rxdd->rxd_val1);

  len = CPU_CHIP_SWAP16(rxdd->len);

  rxd_vlan = CPU_CHIP_SWAP16(rxdd->rxd_vlan);

  print_rxdd(rxdd, rxd_val1, len, rxd_vlan);

  tmp_len = GET_RXD_BC(rxd_val1) << 3;
  BDX_ASSERT(tmp_len <= 0);
  size -= tmp_len;
  if (size < 0)
   break;

  f->m.rptr += tmp_len;

  tmp_len = f->m.rptr - f->m.memsz;
  if (unlikely(tmp_len >= 0)) {
   f->m.rptr = tmp_len;
   if (tmp_len > 0) {
    DBG("wrapped desc rptr=%d tmp_len=%d\n",
        f->m.rptr, tmp_len);
    memcpy(f->m.va + f->m.memsz, f->m.va, tmp_len);
   }
  }

  if (unlikely(GET_RXD_ERR(rxd_val1))) {
   DBG("rxd_err = 0x%x\n", GET_RXD_ERR(rxd_val1));
   ndev->stats.rx_errors++;
   bdx_recycle_skb(priv, rxdd);
   continue;
  }

  rxf_fifo = &priv->rxf_fifo0;
  db = priv->rxdb;
  dm = bdx_rxdb_addr_elem(db, rxdd->va_lo);
  skb = dm->skb;

  if (len < BDX_COPYBREAK &&
      (skb2 = netdev_alloc_skb(priv->ndev, len + NET_IP_ALIGN))) {
   skb_reserve(skb2, NET_IP_ALIGN);

   pci_dma_sync_single_for_cpu(priv->pdev,
          dm->dma, rxf_fifo->m.pktsz,
          PCI_DMA_FROMDEVICE);
   memcpy(skb2->data, skb->data, len);
   bdx_recycle_skb(priv, rxdd);
   skb = skb2;
  } else {
   pci_unmap_single(priv->pdev,
      dm->dma, rxf_fifo->m.pktsz,
      PCI_DMA_FROMDEVICE);
   bdx_rxdb_free_elem(db, rxdd->va_lo);
  }

  ndev->stats.rx_bytes += len;

  skb_put(skb, len);
  skb->protocol = eth_type_trans(skb, ndev);


  if (GET_RXD_PKT_ID(rxd_val1) == 0)
   skb_checksum_none_assert(skb);
  else
   skb->ip_summed = CHECKSUM_UNNECESSARY;

  NETIF_RX_MUX(priv, rxd_val1, rxd_vlan, skb);

  if (++done >= max_done)
   break;
 }

 ndev->stats.rx_packets += done;


 WRITE_REG(priv, f->m.reg_RPTR, f->m.rptr & TXF_WPTR_WR_PTR);

 bdx_rx_alloc_skbs(priv, &priv->rxf_fifo0);

 RET(done);
}
