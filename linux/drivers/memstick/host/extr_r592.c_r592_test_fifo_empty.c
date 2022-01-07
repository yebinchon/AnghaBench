
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int dummy; } ;


 int EIO ;
 int R592_REG_MSC ;
 int R592_REG_MSC_FIFO_EMPTY ;
 int dbg (char*) ;
 int message (char*) ;
 int r592_host_reset (struct r592_device*) ;
 int r592_read_reg (struct r592_device*,int ) ;

__attribute__((used)) static int r592_test_fifo_empty(struct r592_device *dev)
{
 if (r592_read_reg(dev, R592_REG_MSC) & R592_REG_MSC_FIFO_EMPTY)
  return 0;

 dbg("FIFO not ready, trying to reset the device");
 r592_host_reset(dev);

 if (r592_read_reg(dev, R592_REG_MSC) & R592_REG_MSC_FIFO_EMPTY)
  return 0;

 message("FIFO still not ready, giving up");
 return -EIO;
}
