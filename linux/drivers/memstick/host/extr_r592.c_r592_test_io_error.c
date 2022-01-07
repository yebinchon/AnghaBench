
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int dummy; } ;


 int EIO ;
 int R592_STATUS ;
 int R592_STATUS_RECV_ERR ;
 int R592_STATUS_SEND_ERR ;
 int r592_read_reg (struct r592_device*,int ) ;

__attribute__((used)) static int r592_test_io_error(struct r592_device *dev)
{
 if (!(r592_read_reg(dev, R592_STATUS) &
  (R592_STATUS_SEND_ERR | R592_STATUS_RECV_ERR)))
  return 0;

 return -EIO;
}
