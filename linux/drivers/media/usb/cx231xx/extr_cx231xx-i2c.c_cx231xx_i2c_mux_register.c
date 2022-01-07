
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int muxc; } ;


 int i2c_mux_add_adapter (int ,int ,int,int ) ;

int cx231xx_i2c_mux_register(struct cx231xx *dev, int mux_no)
{
 return i2c_mux_add_adapter(dev->muxc,
       0,
       mux_no ,
       0 );
}
