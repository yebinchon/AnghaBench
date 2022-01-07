
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2port_ops {int (* c2d_dir ) (struct c2port_device*,int) ;int (* c2d_set ) (struct c2port_device*,int) ;} ;
struct c2port_device {struct c2port_ops* ops; } ;


 int c2port_strobe_ck (struct c2port_device*) ;
 int stub1 (struct c2port_device*,int) ;
 int stub2 (struct c2port_device*,int) ;
 int stub3 (struct c2port_device*,int) ;
 int stub4 (struct c2port_device*,int) ;
 int stub5 (struct c2port_device*,int) ;

__attribute__((used)) static void c2port_write_ar(struct c2port_device *dev, u8 addr)
{
 struct c2port_ops *ops = dev->ops;
 int i;


 c2port_strobe_ck(dev);


 ops->c2d_dir(dev, 0);
 ops->c2d_set(dev, 1);
 c2port_strobe_ck(dev);
 ops->c2d_set(dev, 1);
 c2port_strobe_ck(dev);


 for (i = 0; i < 8; i++) {
  ops->c2d_set(dev, addr & 0x01);
  c2port_strobe_ck(dev);

  addr >>= 1;
 }


 ops->c2d_dir(dev, 1);
 c2port_strobe_ck(dev);
}
