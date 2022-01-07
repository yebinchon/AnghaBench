
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2port_ops {scalar_t__ (* c2d_get ) (struct c2port_device*) ;int (* c2d_dir ) (struct c2port_device*,int) ;int (* c2d_set ) (struct c2port_device*,int) ;} ;
struct c2port_device {struct c2port_ops* ops; } ;


 int EIO ;
 int c2port_strobe_ck (struct c2port_device*) ;
 int stub1 (struct c2port_device*,int) ;
 int stub2 (struct c2port_device*,int) ;
 int stub3 (struct c2port_device*,int) ;
 int stub4 (struct c2port_device*,int) ;
 int stub5 (struct c2port_device*,int) ;
 int stub6 (struct c2port_device*,int) ;
 int stub7 (struct c2port_device*,int) ;
 scalar_t__ stub8 (struct c2port_device*) ;
 int udelay (int) ;

__attribute__((used)) static int c2port_write_dr(struct c2port_device *dev, u8 data)
{
 struct c2port_ops *ops = dev->ops;
 int timeout, i;


 c2port_strobe_ck(dev);


 ops->c2d_dir(dev, 0);
 ops->c2d_set(dev, 1);
 c2port_strobe_ck(dev);
 ops->c2d_set(dev, 0);
 c2port_strobe_ck(dev);


 ops->c2d_set(dev, 0);
 c2port_strobe_ck(dev);
 ops->c2d_set(dev, 0);
 c2port_strobe_ck(dev);


 for (i = 0; i < 8; i++) {
  ops->c2d_set(dev, data & 0x01);
  c2port_strobe_ck(dev);

  data >>= 1;
 }


 ops->c2d_dir(dev, 1);
 timeout = 20;
 do {
  c2port_strobe_ck(dev);
  if (ops->c2d_get(dev))
   break;

  udelay(1);
 } while (--timeout > 0);
 if (timeout == 0)
  return -EIO;


 c2port_strobe_ck(dev);

 return 0;
}
