
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct moxart_mac_priv_t {int tx_buf_size; int rx_buf_size; uintptr_t* rx_mapping; scalar_t__ base; int rx_base; int tx_base; scalar_t__ rx_head; scalar_t__* rx_buf; scalar_t__ rx_buf_base; void* rx_desc_base; scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ tx_buf_base; scalar_t__* tx_buf; void* tx_desc_base; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ REG_RXR_BASE_ADDRESS ;
 scalar_t__ REG_TXR_BASE_ADDRESS ;
 uintptr_t RX_BUF_SIZE ;
 uintptr_t RX_DESC0_DMA_OWN ;
 uintptr_t RX_DESC1_BUF_SIZE_MASK ;
 uintptr_t RX_DESC1_END ;
 int RX_DESC2_ADDRESS_PHYS ;
 int RX_DESC2_ADDRESS_VIRT ;
 int RX_DESC_NUM ;
 int RX_REG_DESC_SIZE ;
 int RX_REG_OFFSET_DESC0 ;
 int RX_REG_OFFSET_DESC1 ;
 int RX_REG_OFFSET_DESC2 ;
 uintptr_t TX_DESC1_END ;
 int TX_DESC_NUM ;
 int TX_REG_DESC_SIZE ;
 int TX_REG_OFFSET_DESC1 ;
 uintptr_t dma_map_single (int *,scalar_t__,int,int ) ;
 scalar_t__ dma_mapping_error (int *,uintptr_t) ;
 int memset (void*,int ,int) ;
 int moxart_desc_write (uintptr_t,void*) ;
 int netdev_err (struct net_device*,char*) ;
 struct moxart_mac_priv_t* netdev_priv (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void moxart_mac_setup_desc_ring(struct net_device *ndev)
{
 struct moxart_mac_priv_t *priv = netdev_priv(ndev);
 void *desc;
 int i;

 for (i = 0; i < TX_DESC_NUM; i++) {
  desc = priv->tx_desc_base + i * TX_REG_DESC_SIZE;
  memset(desc, 0, TX_REG_DESC_SIZE);

  priv->tx_buf[i] = priv->tx_buf_base + priv->tx_buf_size * i;
 }
 moxart_desc_write(TX_DESC1_END, desc + TX_REG_OFFSET_DESC1);

 priv->tx_head = 0;
 priv->tx_tail = 0;

 for (i = 0; i < RX_DESC_NUM; i++) {
  desc = priv->rx_desc_base + i * RX_REG_DESC_SIZE;
  memset(desc, 0, RX_REG_DESC_SIZE);
  moxart_desc_write(RX_DESC0_DMA_OWN, desc + RX_REG_OFFSET_DESC0);
  moxart_desc_write(RX_BUF_SIZE & RX_DESC1_BUF_SIZE_MASK,
         desc + RX_REG_OFFSET_DESC1);

  priv->rx_buf[i] = priv->rx_buf_base + priv->rx_buf_size * i;
  priv->rx_mapping[i] = dma_map_single(&ndev->dev,
           priv->rx_buf[i],
           priv->rx_buf_size,
           DMA_FROM_DEVICE);
  if (dma_mapping_error(&ndev->dev, priv->rx_mapping[i]))
   netdev_err(ndev, "DMA mapping error\n");

  moxart_desc_write(priv->rx_mapping[i],
         desc + RX_REG_OFFSET_DESC2 + RX_DESC2_ADDRESS_PHYS);
  moxart_desc_write((uintptr_t)priv->rx_buf[i],
         desc + RX_REG_OFFSET_DESC2 + RX_DESC2_ADDRESS_VIRT);
 }
 moxart_desc_write(RX_DESC1_END, desc + RX_REG_OFFSET_DESC1);

 priv->rx_head = 0;


 writel(priv->tx_base, priv->base + REG_TXR_BASE_ADDRESS);
 writel(priv->rx_base, priv->base + REG_RXR_BASE_ADDRESS);
}
