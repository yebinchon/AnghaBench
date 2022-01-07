
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tlan_priv {int lock; } ;
struct net_device {int base_addr; } ;


 int TLAN_DIO_ADR ;
 int TLAN_DIO_DATA ;
 int TLAN_NET_SIO ;
 int TLAN_NET_SIO_MCLK ;
 int TLAN_NET_SIO_MDATA ;
 int TLAN_NET_SIO_MINTEN ;
 int TLAN_NET_SIO_MTXEN ;
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

__attribute__((used)) static bool
tlan_mii_read_reg(struct net_device *dev, u16 phy, u16 reg, u16 *val)
{
 u8 nack;
 u16 sio, tmp;
 u32 i;
 bool err;
 int minten;
 struct tlan_priv *priv = netdev_priv(dev);
 unsigned long flags = 0;

 err = 0;
 outw(TLAN_NET_SIO, dev->base_addr + TLAN_DIO_ADR);
 sio = dev->base_addr + TLAN_DIO_DATA + TLAN_NET_SIO;

 if (!in_irq())
  spin_lock_irqsave(&priv->lock, flags);

 tlan_mii_sync(dev->base_addr);

 minten = tlan_get_bit(TLAN_NET_SIO_MINTEN, sio);
 if (minten)
  tlan_clear_bit(TLAN_NET_SIO_MINTEN, sio);

 tlan_mii_send_data(dev->base_addr, 0x1, 2);
 tlan_mii_send_data(dev->base_addr, 0x2, 2);
 tlan_mii_send_data(dev->base_addr, phy, 5);
 tlan_mii_send_data(dev->base_addr, reg, 5);


 tlan_clear_bit(TLAN_NET_SIO_MTXEN, sio);

 tlan_clear_bit(TLAN_NET_SIO_MCLK, sio);
 tlan_set_bit(TLAN_NET_SIO_MCLK, sio);
 tlan_clear_bit(TLAN_NET_SIO_MCLK, sio);

 nack = tlan_get_bit(TLAN_NET_SIO_MDATA, sio);
 tlan_set_bit(TLAN_NET_SIO_MCLK, sio);
 if (nack) {
  for (i = 0; i < 16; i++) {
   tlan_clear_bit(TLAN_NET_SIO_MCLK, sio);
   tlan_set_bit(TLAN_NET_SIO_MCLK, sio);
  }
  tmp = 0xffff;
  err = 1;
 } else {
  for (tmp = 0, i = 0x8000; i; i >>= 1) {
   tlan_clear_bit(TLAN_NET_SIO_MCLK, sio);
   if (tlan_get_bit(TLAN_NET_SIO_MDATA, sio))
    tmp |= i;
   tlan_set_bit(TLAN_NET_SIO_MCLK, sio);
  }
 }


 tlan_clear_bit(TLAN_NET_SIO_MCLK, sio);
 tlan_set_bit(TLAN_NET_SIO_MCLK, sio);

 if (minten)
  tlan_set_bit(TLAN_NET_SIO_MINTEN, sio);

 *val = tmp;

 if (!in_irq())
  spin_unlock_irqrestore(&priv->lock, flags);

 return err;

}
