
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {scalar_t__ mac_suspended; int wl; } ;


 int B43_DEBUG ;
 scalar_t__ B43_STAT_INITIALIZED ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int b43dbg (int ,char*) ;
 int dump_stack () ;

__attribute__((used)) static inline void assert_mac_suspended(struct b43_wldev *dev)
{
 if (!B43_DEBUG)
  return;
 if ((b43_status(dev) >= B43_STAT_INITIALIZED) &&
     (dev->mac_suspended <= 0)) {
  b43dbg(dev->wl, "PHY/RADIO register access with "
         "enabled MAC.\n");
  dump_stack();
 }
}
