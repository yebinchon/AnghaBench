
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;


 int b43legacy_set_slot_time (struct b43legacy_wldev*,int) ;

__attribute__((used)) static void b43legacy_short_slot_timing_disable(struct b43legacy_wldev *dev)
{
 b43legacy_set_slot_time(dev, 20);
}
