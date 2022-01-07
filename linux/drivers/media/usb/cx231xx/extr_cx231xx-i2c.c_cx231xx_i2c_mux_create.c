
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx231xx {TYPE_2__* muxc; int dev; TYPE_1__* i2c_bus; } ;
struct TYPE_4__ {struct cx231xx* priv; } ;
struct TYPE_3__ {int i2c_adap; } ;


 int ENOMEM ;
 int cx231xx_i2c_mux_select ;
 TYPE_2__* i2c_mux_alloc (int *,int ,int,int ,int ,int ,int *) ;

int cx231xx_i2c_mux_create(struct cx231xx *dev)
{
 dev->muxc = i2c_mux_alloc(&dev->i2c_bus[1].i2c_adap, dev->dev, 2, 0, 0,
      cx231xx_i2c_mux_select, ((void*)0));
 if (!dev->muxc)
  return -ENOMEM;
 dev->muxc->priv = dev;
 return 0;
}
