
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {unsigned int len; int * data; } ;
struct TYPE_2__ {int tx_dropped; } ;
struct net_device {int dev; TYPE_1__ stats; } ;
struct moxart_mac_priv_t {unsigned int tx_head; int* tx_mapping; unsigned int* tx_len; int txlock; scalar_t__ base; int tx_buf_size; struct sk_buff** tx_skb; void* tx_desc_base; } ;


 int DMA_TO_DEVICE ;
 unsigned int ETH_ZLEN ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ REG_TX_POLL_DEMAND ;
 unsigned int TX_BUF_SIZE ;
 int TX_DESC0_DMA_OWN ;
 unsigned int TX_DESC1_BUF_SIZE_MASK ;
 int TX_DESC1_END ;
 unsigned int TX_DESC1_FTS ;
 unsigned int TX_DESC1_LTS ;
 int TX_DESC2_ADDRESS_PHYS ;
 int TX_DESC2_ADDRESS_VIRT ;
 unsigned int TX_DESC_NUM_MASK ;
 unsigned int TX_NEXT (unsigned int) ;
 unsigned int TX_REG_DESC_SIZE ;
 int TX_REG_OFFSET_DESC0 ;
 int TX_REG_OFFSET_DESC1 ;
 int TX_REG_OFFSET_DESC2 ;
 int dma_map_single (int *,int *,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int *,int) ;
 int dma_sync_single_for_device (int *,int,int ,int ) ;
 int memset (int *,int ,unsigned int) ;
 int moxart_desc_read (void*) ;
 int moxart_desc_write (int,void*) ;
 int moxart_tx_queue_space (struct net_device*) ;
 int net_dbg_ratelimited (char*) ;
 int netdev_err (struct net_device*,char*) ;
 struct moxart_mac_priv_t* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int rmb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wmb () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int moxart_mac_start_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct moxart_mac_priv_t *priv = netdev_priv(ndev);
 void *desc;
 unsigned int len;
 unsigned int tx_head;
 u32 txdes1;
 int ret = NETDEV_TX_BUSY;

 spin_lock_irq(&priv->txlock);

 tx_head = priv->tx_head;
 desc = priv->tx_desc_base + (TX_REG_DESC_SIZE * tx_head);

 if (moxart_tx_queue_space(ndev) == 1)
  netif_stop_queue(ndev);

 if (moxart_desc_read(desc + TX_REG_OFFSET_DESC0) & TX_DESC0_DMA_OWN) {
  net_dbg_ratelimited("no TX space for packet\n");
  ndev->stats.tx_dropped++;
  goto out_unlock;
 }
 rmb();

 len = skb->len > TX_BUF_SIZE ? TX_BUF_SIZE : skb->len;

 priv->tx_mapping[tx_head] = dma_map_single(&ndev->dev, skb->data,
         len, DMA_TO_DEVICE);
 if (dma_mapping_error(&ndev->dev, priv->tx_mapping[tx_head])) {
  netdev_err(ndev, "DMA mapping error\n");
  goto out_unlock;
 }

 priv->tx_len[tx_head] = len;
 priv->tx_skb[tx_head] = skb;

 moxart_desc_write(priv->tx_mapping[tx_head],
        desc + TX_REG_OFFSET_DESC2 + TX_DESC2_ADDRESS_PHYS);
 moxart_desc_write((uintptr_t)skb->data,
        desc + TX_REG_OFFSET_DESC2 + TX_DESC2_ADDRESS_VIRT);

 if (skb->len < ETH_ZLEN) {
  memset(&skb->data[skb->len],
         0, ETH_ZLEN - skb->len);
  len = ETH_ZLEN;
 }

 dma_sync_single_for_device(&ndev->dev, priv->tx_mapping[tx_head],
       priv->tx_buf_size, DMA_TO_DEVICE);

 txdes1 = TX_DESC1_LTS | TX_DESC1_FTS | (len & TX_DESC1_BUF_SIZE_MASK);
 if (tx_head == TX_DESC_NUM_MASK)
  txdes1 |= TX_DESC1_END;
 moxart_desc_write(txdes1, desc + TX_REG_OFFSET_DESC1);
 wmb();
 moxart_desc_write(TX_DESC0_DMA_OWN, desc + TX_REG_OFFSET_DESC0);


 writel(0xffffffff, priv->base + REG_TX_POLL_DEMAND);

 priv->tx_head = TX_NEXT(tx_head);

 netif_trans_update(ndev);
 ret = NETDEV_TX_OK;
out_unlock:
 spin_unlock_irq(&priv->txlock);

 return ret;
}
