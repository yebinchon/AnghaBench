
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* wl; } ;
struct b43_leds {int stop; int work; } ;
struct TYPE_2__ {struct b43_leds leds; } ;


 int cancel_work_sync (int *) ;

void b43_leds_stop(struct b43_wldev *dev)
{
 struct b43_leds *leds = &dev->wl->leds;

 leds->stop = 1;
 cancel_work_sync(&leds->work);
}
