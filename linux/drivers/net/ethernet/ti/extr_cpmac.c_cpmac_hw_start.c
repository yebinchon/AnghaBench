
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct plat_cpmac_data {int reset_bit; } ;
struct net_device {int* dev_addr; } ;
struct cpmac_priv {int regs; TYPE_2__* rx_head; TYPE_1__* pdev; } ;
struct TYPE_4__ {int mapping; } ;
struct TYPE_3__ {int dev; } ;


 int CPMAC_BUFFER_OFFSET ;
 int CPMAC_MAC_ADDR_HI ;
 int CPMAC_MAC_ADDR_LO (int) ;
 int CPMAC_MAC_ADDR_MID ;
 int CPMAC_MAC_CONTROL ;
 int CPMAC_MAC_INT_CLEAR ;
 int CPMAC_MAC_INT_ENABLE ;
 int CPMAC_MAX_LENGTH ;
 int CPMAC_MBP ;
 int CPMAC_RX_CONTROL ;
 int CPMAC_RX_INT_CLEAR ;
 int CPMAC_RX_INT_ENABLE ;
 int CPMAC_RX_PTR (int) ;
 int CPMAC_SKB_SIZE ;
 int CPMAC_TX_CONTROL ;
 int CPMAC_TX_INT_CLEAR ;
 int CPMAC_TX_INT_ENABLE ;
 int CPMAC_TX_PTR (int) ;
 int CPMAC_UNICAST_CLEAR ;
 int CPMAC_UNICAST_ENABLE ;
 int MAC_FDX ;
 int MAC_MII ;
 int MBP_RXBCAST ;
 int MBP_RXMCAST ;
 int MBP_RXSHORT ;
 int ar7_device_reset (int ) ;
 int cpmac_read (int ,int ) ;
 int cpmac_write (int ,int ,int) ;
 struct plat_cpmac_data* dev_get_platdata (int *) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cpmac_hw_start(struct net_device *dev)
{
 int i;
 struct cpmac_priv *priv = netdev_priv(dev);
 struct plat_cpmac_data *pdata = dev_get_platdata(&priv->pdev->dev);

 ar7_device_reset(pdata->reset_bit);
 for (i = 0; i < 8; i++) {
  cpmac_write(priv->regs, CPMAC_TX_PTR(i), 0);
  cpmac_write(priv->regs, CPMAC_RX_PTR(i), 0);
 }
 cpmac_write(priv->regs, CPMAC_RX_PTR(0), priv->rx_head->mapping);

 cpmac_write(priv->regs, CPMAC_MBP, MBP_RXSHORT | MBP_RXBCAST |
      MBP_RXMCAST);
 cpmac_write(priv->regs, CPMAC_BUFFER_OFFSET, 0);
 for (i = 0; i < 8; i++)
  cpmac_write(priv->regs, CPMAC_MAC_ADDR_LO(i), dev->dev_addr[5]);
 cpmac_write(priv->regs, CPMAC_MAC_ADDR_MID, dev->dev_addr[4]);
 cpmac_write(priv->regs, CPMAC_MAC_ADDR_HI, dev->dev_addr[0] |
      (dev->dev_addr[1] << 8) | (dev->dev_addr[2] << 16) |
      (dev->dev_addr[3] << 24));
 cpmac_write(priv->regs, CPMAC_MAX_LENGTH, CPMAC_SKB_SIZE);
 cpmac_write(priv->regs, CPMAC_UNICAST_CLEAR, 0xff);
 cpmac_write(priv->regs, CPMAC_RX_INT_CLEAR, 0xff);
 cpmac_write(priv->regs, CPMAC_TX_INT_CLEAR, 0xff);
 cpmac_write(priv->regs, CPMAC_MAC_INT_CLEAR, 0xff);
 cpmac_write(priv->regs, CPMAC_UNICAST_ENABLE, 1);
 cpmac_write(priv->regs, CPMAC_RX_INT_ENABLE, 1);
 cpmac_write(priv->regs, CPMAC_TX_INT_ENABLE, 0xff);
 cpmac_write(priv->regs, CPMAC_MAC_INT_ENABLE, 3);

 cpmac_write(priv->regs, CPMAC_RX_CONTROL,
      cpmac_read(priv->regs, CPMAC_RX_CONTROL) | 1);
 cpmac_write(priv->regs, CPMAC_TX_CONTROL,
      cpmac_read(priv->regs, CPMAC_TX_CONTROL) | 1);
 cpmac_write(priv->regs, CPMAC_MAC_CONTROL,
      cpmac_read(priv->regs, CPMAC_MAC_CONTROL) | MAC_MII |
      MAC_FDX);
}
