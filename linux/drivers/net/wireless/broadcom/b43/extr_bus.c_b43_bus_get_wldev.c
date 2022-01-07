
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_bus_dev {int bus_type; int sdev; int bdev; } ;




 void* bcma_get_drvdata (int ) ;
 void* ssb_get_drvdata (int ) ;

void *b43_bus_get_wldev(struct b43_bus_dev *dev)
{
 switch (dev->bus_type) {
 }
 return ((void*)0);
}
