
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ks8842_adapter {int conf_flags; int lock; } ;


 unsigned int ETH_ALEN ;
 int MICREL_KS884X ;
 scalar_t__ REG_MACAR1 ;
 scalar_t__ REG_MACAR2 ;
 scalar_t__ REG_MACAR3 ;
 scalar_t__ REG_MARH ;
 scalar_t__ REG_MARL ;
 scalar_t__ REG_MARM ;
 int ks8842_read16 (struct ks8842_adapter*,int,scalar_t__) ;
 int ks8842_write16 (struct ks8842_adapter*,int,int ,scalar_t__) ;
 int ks8842_write8 (struct ks8842_adapter*,int,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ks8842_write_mac_addr(struct ks8842_adapter *adapter, u8 *mac)
{
 unsigned long flags;
 unsigned i;

 spin_lock_irqsave(&adapter->lock, flags);
 for (i = 0; i < ETH_ALEN; i++) {
  ks8842_write8(adapter, 2, mac[ETH_ALEN - i - 1], REG_MARL + i);
  if (!(adapter->conf_flags & MICREL_KS884X))
   ks8842_write8(adapter, 39, mac[ETH_ALEN - i - 1],
    REG_MACAR1 + i);
 }

 if (adapter->conf_flags & MICREL_KS884X) {





  u16 mac;

  mac = ks8842_read16(adapter, 2, REG_MARL);
  ks8842_write16(adapter, 39, mac, REG_MACAR3);
  mac = ks8842_read16(adapter, 2, REG_MARM);
  ks8842_write16(adapter, 39, mac, REG_MACAR2);
  mac = ks8842_read16(adapter, 2, REG_MARH);
  ks8842_write16(adapter, 39, mac, REG_MACAR1);
 }
 spin_unlock_irqrestore(&adapter->lock, flags);
}
