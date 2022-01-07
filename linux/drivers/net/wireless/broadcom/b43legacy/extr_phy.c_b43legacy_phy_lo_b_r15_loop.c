
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 scalar_t__ b43legacy_phy_read (struct b43legacy_wldev*,int) ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int,int) ;
 int cond_resched () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static u16 b43legacy_phy_lo_b_r15_loop(struct b43legacy_wldev *dev)
{
 int i;
 u16 ret = 0;
 unsigned long flags;

 local_irq_save(flags);
 for (i = 0; i < 10; i++) {
  b43legacy_phy_write(dev, 0x0015, 0xAFA0);
  udelay(1);
  b43legacy_phy_write(dev, 0x0015, 0xEFA0);
  udelay(10);
  b43legacy_phy_write(dev, 0x0015, 0xFFA0);
  udelay(40);
  ret += b43legacy_phy_read(dev, 0x002C);
 }
 local_irq_restore(flags);
 cond_resched();

 return ret;
}
