
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_pio {int * queue0; int * queue1; int * queue2; int * queue3; } ;
struct b43legacy_wldev {struct b43legacy_pio pio; } ;


 int b43legacy_destroy_pioqueue (int *) ;
 int b43legacy_using_pio (struct b43legacy_wldev*) ;

void b43legacy_pio_free(struct b43legacy_wldev *dev)
{
 struct b43legacy_pio *pio;

 if (!b43legacy_using_pio(dev))
  return;
 pio = &dev->pio;

 b43legacy_destroy_pioqueue(pio->queue3);
 pio->queue3 = ((void*)0);
 b43legacy_destroy_pioqueue(pio->queue2);
 pio->queue2 = ((void*)0);
 b43legacy_destroy_pioqueue(pio->queue1);
 pio->queue1 = ((void*)0);
 b43legacy_destroy_pioqueue(pio->queue0);
 pio->queue0 = ((void*)0);
}
