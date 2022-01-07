
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_chip {int dev; } ;


 int device_del (int *) ;

void mux_chip_unregister(struct mux_chip *mux_chip)
{
 device_del(&mux_chip->dev);
}
