
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_chip {int dev; } ;


 int put_device (int *) ;

void mux_chip_free(struct mux_chip *mux_chip)
{
 if (!mux_chip)
  return;

 put_device(&mux_chip->dev);
}
