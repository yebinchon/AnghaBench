
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; scalar_t__ magic; } ;
struct cp_private {int lock; int regs; } ;


 scalar_t__ CP_EEPROM_MAGIC ;
 int EINVAL ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int read_eeprom (int ,int,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int write_eeprom (int ,int,int,unsigned int) ;

__attribute__((used)) static int cp_set_eeprom(struct net_device *dev,
    struct ethtool_eeprom *eeprom, u8 *data)
{
 struct cp_private *cp = netdev_priv(dev);
 unsigned int addr_len;
 u16 val;
 u32 offset = eeprom->offset >> 1;
 u32 len = eeprom->len;
 u32 i = 0;

 if (eeprom->magic != CP_EEPROM_MAGIC)
  return -EINVAL;

 spin_lock_irq(&cp->lock);

 addr_len = read_eeprom(cp->regs, 0, 8) == 0x8129 ? 8 : 6;

 if (eeprom->offset & 1) {
  val = read_eeprom(cp->regs, offset, addr_len) & 0xff;
  val |= (u16)data[i++] << 8;
  write_eeprom(cp->regs, offset, val, addr_len);
  offset++;
 }

 while (i < len - 1) {
  val = (u16)data[i++];
  val |= (u16)data[i++] << 8;
  write_eeprom(cp->regs, offset, val, addr_len);
  offset++;
 }

 if (i < len) {
  val = read_eeprom(cp->regs, offset, addr_len) & 0xff00;
  val |= (u16)data[i];
  write_eeprom(cp->regs, offset, val, addr_len);
 }

 spin_unlock_irq(&cp->lock);
 return 0;
}
