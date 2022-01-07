
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_bus_dev {int bus_type; int sdev; int bdev; } ;




 int bcma_set_drvdata (int ,void*) ;
 int ssb_set_drvdata (int ,void*) ;

void b43_bus_set_wldev(struct b43_bus_dev *dev, void *wldev)
{
 switch (dev->bus_type) {
 }
}
