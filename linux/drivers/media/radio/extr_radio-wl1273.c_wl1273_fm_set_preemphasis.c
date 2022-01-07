
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1273_device {unsigned int preemphasis; struct wl1273_core* core; } ;
struct wl1273_core {scalar_t__ mode; int (* write ) (struct wl1273_core*,int ,int) ;int lock; } ;


 int EINVAL ;
 int EPERM ;



 scalar_t__ WL1273_MODE_OFF ;
 scalar_t__ WL1273_MODE_SUSPENDED ;
 int WL1273_PREMPH_SET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wl1273_core*,int ,int) ;

__attribute__((used)) static int wl1273_fm_set_preemphasis(struct wl1273_device *radio,
         unsigned int preemphasis)
{
 struct wl1273_core *core = radio->core;
 int r;
 u16 em;

 if (core->mode == WL1273_MODE_OFF ||
     core->mode == WL1273_MODE_SUSPENDED)
  return -EPERM;

 mutex_lock(&core->lock);

 switch (preemphasis) {
 case 128:
  em = 1;
  break;
 case 130:
  em = 0;
  break;
 case 129:
  em = 2;
  break;
 default:
  r = -EINVAL;
  goto out;
 }

 r = core->write(core, WL1273_PREMPH_SET, em);
 if (r)
  goto out;

 radio->preemphasis = preemphasis;

out:
 mutex_unlock(&core->lock);
 return r;
}
