
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tlan_priv {int tlan_full_duplex; int tlan_rev; int aui; scalar_t__ duplex; scalar_t__ phy_num; TYPE_1__* adapter; scalar_t__ phy_online; } ;
struct net_device {int base_addr; } ;
struct TYPE_2__ {int flags; } ;


 int TLAN_ACOMMIT ;
 int TLAN_ADAPTER_BIT_RATE_PHY ;
 int TLAN_ADAPTER_UNMANAGED_PHY ;
 int TLAN_ADAPTER_USE_INTERN_10 ;
 int TLAN_AREG_0 ;
 int TLAN_DIO_ADR ;
 int TLAN_DIO_DATA ;
 scalar_t__ TLAN_DUPLEX_FULL ;
 int TLAN_HASH_2 ;
 int TLAN_HC_AD_RST ;
 int TLAN_HC_INT_OFF ;
 int TLAN_HC_LD_THR ;
 int TLAN_HC_LD_TMR ;
 int TLAN_HOST_CMD ;
 int TLAN_ID_RX_EOC ;
 int TLAN_ID_TX_EOC ;
 int TLAN_INT_DIS ;
 int TLAN_NET_CFG_1CHAN ;
 int TLAN_NET_CFG_1FRAG ;
 int TLAN_NET_CFG_BIT ;
 int TLAN_NET_CFG_PHY_EN ;
 int TLAN_NET_CONFIG ;
 int TLAN_NET_SIO ;
 int TLAN_NET_SIO_NMRST ;
 int inl (int) ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int outl (int,int) ;
 int outw (int,int) ;
 int tlan_dio_write16 (int,int ,int ) ;
 int tlan_dio_write32 (int,int ,int ) ;
 int tlan_dio_write8 (int,int ,int) ;
 int tlan_finish_reset (struct net_device*) ;
 int tlan_phy_detect (struct net_device*) ;
 int tlan_phy_power_down (struct net_device*) ;
 int tlan_set_bit (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void
tlan_reset_adapter(struct net_device *dev)
{
 struct tlan_priv *priv = netdev_priv(dev);
 int i;
 u32 addr;
 u32 data;
 u8 data8;

 priv->tlan_full_duplex = 0;
 priv->phy_online = 0;
 netif_carrier_off(dev);



 data = inl(dev->base_addr + TLAN_HOST_CMD);
 data |= TLAN_HC_AD_RST;
 outl(data, dev->base_addr + TLAN_HOST_CMD);

 udelay(1000);



 data = inl(dev->base_addr + TLAN_HOST_CMD);
 data |= TLAN_HC_INT_OFF;
 outl(data, dev->base_addr + TLAN_HOST_CMD);



 for (i = TLAN_AREG_0; i <= TLAN_HASH_2; i += 4)
  tlan_dio_write32(dev->base_addr, (u16) i, 0);



 data = TLAN_NET_CFG_1FRAG | TLAN_NET_CFG_1CHAN | TLAN_NET_CFG_PHY_EN;
 tlan_dio_write16(dev->base_addr, TLAN_NET_CONFIG, (u16) data);



 outl(TLAN_HC_LD_TMR | 0x3f, dev->base_addr + TLAN_HOST_CMD);
 outl(TLAN_HC_LD_THR | 0x9, dev->base_addr + TLAN_HOST_CMD);



 outw(TLAN_NET_SIO, dev->base_addr + TLAN_DIO_ADR);
 addr = dev->base_addr + TLAN_DIO_DATA + TLAN_NET_SIO;
 tlan_set_bit(TLAN_NET_SIO_NMRST, addr);



 if (priv->tlan_rev >= 0x30) {
  data8 = TLAN_ID_TX_EOC | TLAN_ID_RX_EOC;
  tlan_dio_write8(dev->base_addr, TLAN_INT_DIS, data8);
 }
 tlan_phy_detect(dev);
 data = TLAN_NET_CFG_1FRAG | TLAN_NET_CFG_1CHAN;

 if (priv->adapter->flags & TLAN_ADAPTER_BIT_RATE_PHY) {
  data |= TLAN_NET_CFG_BIT;
  if (priv->aui == 1) {
   tlan_dio_write8(dev->base_addr, TLAN_ACOMMIT, 0x0a);
  } else if (priv->duplex == TLAN_DUPLEX_FULL) {
   tlan_dio_write8(dev->base_addr, TLAN_ACOMMIT, 0x00);
   priv->tlan_full_duplex = 1;
  } else {
   tlan_dio_write8(dev->base_addr, TLAN_ACOMMIT, 0x08);
  }
 }


 if (priv->phy_num == 0 ||
    (priv->adapter->flags & TLAN_ADAPTER_USE_INTERN_10))
  data |= TLAN_NET_CFG_PHY_EN;
 tlan_dio_write16(dev->base_addr, TLAN_NET_CONFIG, (u16) data);

 if (priv->adapter->flags & TLAN_ADAPTER_UNMANAGED_PHY)
  tlan_finish_reset(dev);
 else
  tlan_phy_power_down(dev);

}
