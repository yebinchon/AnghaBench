
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int muxc; } ;


 int i2c_mux_del_adapters (int ) ;

void cx231xx_i2c_mux_unregister(struct cx231xx *dev)
{
 i2c_mux_del_adapters(dev->muxc);
}
