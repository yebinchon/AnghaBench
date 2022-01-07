
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct xgene_enet_raw_desc16 {int m1; } ;
struct xgene_enet_pdata {TYPE_1__* ring_ops; } ;
struct xgene_enet_desc_ring {int tail; int slots; struct sk_buff** rx_skb; struct xgene_enet_raw_desc16* raw_desc16; struct net_device* ndev; } ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* wr_cmd ) (struct xgene_enet_desc_ring*,int) ;} ;


 int BUFDATALEN ;
 int BUF_LEN_CODE_2K ;
 int COHERENT ;
 int DATAADDR ;
 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 int GENMASK (int,int ) ;
 int SET_BIT (int ) ;
 int SET_VAL (int ,int) ;
 int SKB_BUFFER_SIZE ;
 int XGENE_ENET_STD_MTU ;
 int cpu_to_le64 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (struct device*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int) ;
 struct device* ndev_to_dev (struct net_device*) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int stub1 (struct xgene_enet_desc_ring*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int xgene_enet_refill_bufpool(struct xgene_enet_desc_ring *buf_pool,
         u32 nbuf)
{
 struct sk_buff *skb;
 struct xgene_enet_raw_desc16 *raw_desc;
 struct xgene_enet_pdata *pdata;
 struct net_device *ndev;
 struct device *dev;
 dma_addr_t dma_addr;
 u32 tail = buf_pool->tail;
 u32 slots = buf_pool->slots - 1;
 u16 bufdatalen, len;
 int i;

 ndev = buf_pool->ndev;
 dev = ndev_to_dev(buf_pool->ndev);
 pdata = netdev_priv(ndev);

 bufdatalen = BUF_LEN_CODE_2K | (SKB_BUFFER_SIZE & GENMASK(11, 0));
 len = XGENE_ENET_STD_MTU;

 for (i = 0; i < nbuf; i++) {
  raw_desc = &buf_pool->raw_desc16[tail];

  skb = netdev_alloc_skb_ip_align(ndev, len);
  if (unlikely(!skb))
   return -ENOMEM;

  dma_addr = dma_map_single(dev, skb->data, len, DMA_FROM_DEVICE);
  if (dma_mapping_error(dev, dma_addr)) {
   netdev_err(ndev, "DMA mapping error\n");
   dev_kfree_skb_any(skb);
   return -EINVAL;
  }

  buf_pool->rx_skb[tail] = skb;

  raw_desc->m1 = cpu_to_le64(SET_VAL(DATAADDR, dma_addr) |
        SET_VAL(BUFDATALEN, bufdatalen) |
        SET_BIT(COHERENT));
  tail = (tail + 1) & slots;
 }

 pdata->ring_ops->wr_cmd(buf_pool, nbuf);
 buf_pool->tail = tail;

 return 0;
}
