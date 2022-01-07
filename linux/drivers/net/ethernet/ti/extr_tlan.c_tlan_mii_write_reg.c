
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tlan_priv {int lock; } ;
struct net_device {int base_addr; } ;


 int TLAN_DIO_ADR ;
 int TLAN_DIO_DATA ;
 int TLAN_NET_SIO ;
 int TLAN_NET_SIO_MCLK ;
 int TLAN_NET_SIO_MINTEN ;
 int in_irq () ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int outw (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tlan_clear_bit (int ,int) ;
 int tlan_get_bit (int ,int) ;
 int tlan_mii_send_data (int,int,int) ;
 int tlan_mii_sync (int) ;
 int tlan_set_bit (int ,int) ;

__attribute__((used)) static void
tlan_mii_write_reg(struct net_device *dev, u16 phy, u16 reg, u16 val)
{
 u16 sio;
 int minten;
 unsigned long flags = 0;
 struct tlan_priv *priv = netdev_priv(dev);

 outw(TLAN_NET_SIO, dev->base_addr + TLAN_DIO_ADR);
 sio = dev->base_addr + TLAN_DIO_DATA + TLAN_NET_SIO;

 if (!in_irq())
  spin_lock_irqsave(&priv->lock, flags);

 tlan_mii_sync(dev->base_addr);

 minten = tlan_get_bit(TLAN_NET_SIO_MINTEN, sio);
 if (minten)
  tlan_clear_bit(TLAN_NET_SIO_MINTEN, sio);

 tlan_mii_send_data(dev->base_addr, 0x1, 2);
 tlan_mii_send_data(dev->base_addr, 0x1, 2);
 tlan_mii_send_data(dev->base_addr, phy, 5);
 tlan_mii_send_data(dev->base_addr, reg, 5);

 tlan_mii_send_data(dev->base_addr, 0x2, 2);
 tlan_mii_send_data(dev->base_addr, val, 16);

 tlan_clear_bit(TLAN_NET_SIO_MCLK, sio);
 tlan_set_bit(TLAN_NET_SIO_MCLK, sio);

 if (minten)
  tlan_set_bit(TLAN_NET_SIO_MINTEN, sio);

 if (!in_irq())
  spin_unlock_irqrestore(&priv->lock, flags);

}
