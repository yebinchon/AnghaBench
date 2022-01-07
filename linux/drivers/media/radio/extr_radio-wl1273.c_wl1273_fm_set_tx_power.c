
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct wl1273_device {scalar_t__ tx_power; struct wl1273_core* core; } ;
struct wl1273_core {scalar_t__ mode; int (* write ) (struct wl1273_core*,int ,scalar_t__) ;int lock; } ;


 int EPERM ;
 scalar_t__ WL1273_MODE_OFF ;
 scalar_t__ WL1273_MODE_SUSPENDED ;
 int WL1273_POWER_LEV_SET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wl1273_core*,int ,scalar_t__) ;

__attribute__((used)) static int wl1273_fm_set_tx_power(struct wl1273_device *radio, u16 power)
{
 struct wl1273_core *core = radio->core;
 int r;

 if (core->mode == WL1273_MODE_OFF ||
     core->mode == WL1273_MODE_SUSPENDED)
  return -EPERM;

 mutex_lock(&core->lock);


 r = core->write(core, WL1273_POWER_LEV_SET, 122 - power);
 if (r)
  goto out;

 radio->tx_power = power;

out:
 mutex_unlock(&core->lock);
 return r;
}
