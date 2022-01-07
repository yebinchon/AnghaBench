
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct c2port_ops {size_t block_size; size_t blocks_num; } ;
struct c2port_device {struct c2port_ops* ops; } ;
typedef int ssize_t ;
typedef size_t loff_t ;


 char C2PORT_BLOCK_WRITE ;
 size_t C2PORT_COMMAND_OK ;
 int C2PORT_FPDAT ;
 int EBUSY ;
 int EINVAL ;
 int c2port_poll_in_busy (struct c2port_device*) ;
 int c2port_poll_out_ready (struct c2port_device*) ;
 int c2port_read_dr (struct c2port_device*,size_t*) ;
 int c2port_write_ar (struct c2port_device*,int ) ;
 int c2port_write_dr (struct c2port_device*,char) ;

__attribute__((used)) static ssize_t __c2port_write_flash_data(struct c2port_device *dev,
    char *buffer, loff_t offset, size_t count)
{
 struct c2port_ops *ops = dev->ops;
 u8 status, nwrite = 128;
 int i, ret;

 if (nwrite > count)
  nwrite = count;
 if (ops->block_size * ops->blocks_num - offset < nwrite)
  nwrite = ops->block_size * ops->blocks_num - offset;


 if (offset >= ops->block_size * ops->blocks_num)
  return -EINVAL;



 c2port_write_ar(dev, C2PORT_FPDAT);


 c2port_write_dr(dev, C2PORT_BLOCK_WRITE);


 ret = c2port_poll_in_busy(dev);
 if (ret < 0)
  return ret;




 ret = c2port_poll_out_ready(dev);
 if (ret < 0)
  return ret;


 ret = c2port_read_dr(dev, &status);
 if (ret < 0)
  return ret;
 if (status != C2PORT_COMMAND_OK)
  return -EBUSY;


 c2port_write_dr(dev, offset >> 8);
 ret = c2port_poll_in_busy(dev);
 if (ret < 0)
  return ret;


 c2port_write_dr(dev, offset & 0x00ff);
 ret = c2port_poll_in_busy(dev);
 if (ret < 0)
  return ret;


 c2port_write_dr(dev, nwrite);
 ret = c2port_poll_in_busy(dev);
 if (ret < 0)
  return ret;




 ret = c2port_poll_out_ready(dev);
 if (ret < 0)
  return ret;


 ret = c2port_read_dr(dev, &status);
 if (ret < 0)
  return ret;
 if (status != C2PORT_COMMAND_OK)
  return -EBUSY;


 for (i = 0; i < nwrite; i++) {
  ret = c2port_write_dr(dev, *(buffer+i));
  if (ret < 0)
   return ret;

  ret = c2port_poll_in_busy(dev);
  if (ret < 0)
   return ret;

 }


 ret = c2port_poll_out_ready(dev);
 if (ret < 0)
  return ret;

 return nwrite;
}
