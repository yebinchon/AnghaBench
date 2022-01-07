
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int H_D0I3C_I3 ;
 int H_D0I3C_IR ;
 int mei_me_d0i3c_read (struct mei_device*) ;
 int mei_me_d0i3c_write (struct mei_device*,int ) ;

__attribute__((used)) static u32 mei_me_d0i3_unset(struct mei_device *dev)
{
 u32 reg = mei_me_d0i3c_read(dev);

 reg &= ~H_D0I3C_I3;
 reg |= H_D0I3C_IR;
 mei_me_d0i3c_write(dev, reg);

 reg = mei_me_d0i3c_read(dev);
 return reg;
}
