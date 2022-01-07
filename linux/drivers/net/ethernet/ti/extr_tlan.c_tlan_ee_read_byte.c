
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlan_priv {int lock; } ;
struct net_device {int base_addr; } ;


 int TLAN_EEPROM_ACK ;
 int TLAN_EEPROM_STOP ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tlan_ee_receive_byte (int ,int*,int ) ;
 int tlan_ee_send_byte (int ,int,int ) ;
 int tlan_ee_send_start (int ) ;

__attribute__((used)) static int tlan_ee_read_byte(struct net_device *dev, u8 ee_addr, u8 *data)
{
 int err;
 struct tlan_priv *priv = netdev_priv(dev);
 unsigned long flags = 0;
 int ret = 0;

 spin_lock_irqsave(&priv->lock, flags);

 tlan_ee_send_start(dev->base_addr);
 err = tlan_ee_send_byte(dev->base_addr, 0xa0, TLAN_EEPROM_ACK);
 if (err) {
  ret = 1;
  goto fail;
 }
 err = tlan_ee_send_byte(dev->base_addr, ee_addr, TLAN_EEPROM_ACK);
 if (err) {
  ret = 2;
  goto fail;
 }
 tlan_ee_send_start(dev->base_addr);
 err = tlan_ee_send_byte(dev->base_addr, 0xa1, TLAN_EEPROM_ACK);
 if (err) {
  ret = 3;
  goto fail;
 }
 tlan_ee_receive_byte(dev->base_addr, data, TLAN_EEPROM_STOP);
fail:
 spin_unlock_irqrestore(&priv->lock, flags);

 return ret;

}
