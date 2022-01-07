
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* g; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct b43_txpower_lo_control {int calib_list; } ;
struct b43_rfatt {int dummy; } ;
struct b43_lo_calib {int list; } ;
struct b43_bbatt {int dummy; } ;
struct TYPE_3__ {struct b43_txpower_lo_control* lo_control; } ;


 struct b43_lo_calib* b43_calibrate_lo_setting (struct b43_wldev*,struct b43_bbatt const*,struct b43_rfatt const*) ;
 struct b43_lo_calib* b43_find_lo_calib (struct b43_txpower_lo_control*,struct b43_bbatt const*,struct b43_rfatt const*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static
struct b43_lo_calib *b43_get_calib_lo_settings(struct b43_wldev *dev,
            const struct b43_bbatt *bbatt,
            const struct b43_rfatt *rfatt)
{
 struct b43_txpower_lo_control *lo = dev->phy.g->lo_control;
 struct b43_lo_calib *c;

 c = b43_find_lo_calib(lo, bbatt, rfatt);
 if (c)
  return c;


 c = b43_calibrate_lo_setting(dev, bbatt, rfatt);
 if (!c)
  return ((void*)0);
 list_add(&c->list, &lo->calib_list);

 return c;
}
