
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct c2port_ops {size_t block_size; size_t blocks_num; } ;
struct c2port_device {struct c2port_ops* ops; } ;
typedef size_t ssize_t ;
typedef size_t loff_t ;


 size_t C2PORT_BLOCK_READ ;
 size_t C2PORT_COMMAND_OK ;
 int C2PORT_FPDAT ;
 size_t EBUSY ;
 int c2port_poll_in_busy (struct c2port_device*) ;
 int c2port_poll_out_ready (struct c2port_device*) ;
 int c2port_read_dr (struct c2port_device*,...) ;
 int c2port_write_ar (struct c2port_device*,int ) ;
 int c2port_write_dr (struct c2port_device*,size_t) ;

__attribute__((used)) static ssize_t __c2port_read_flash_data(struct c2port_device *dev,
    char *buffer, loff_t offset, size_t count)
{
 struct c2port_ops *ops = dev->ops;
 u8 status, nread = 128;
 int i, ret;


 if (offset >= ops->block_size * ops->blocks_num)
  return 0;

 if (ops->block_size * ops->blocks_num - offset < nread)
  nread = ops->block_size * ops->blocks_num - offset;
 if (count < nread)
  nread = count;
 if (nread == 0)
  return nread;



 c2port_write_ar(dev, C2PORT_FPDAT);


 c2port_write_dr(dev, C2PORT_BLOCK_READ);


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


 c2port_write_dr(dev, nread);
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


 for (i = 0; i < nread; i++) {
  ret = c2port_poll_out_ready(dev);
  if (ret < 0)
   return ret;

  ret = c2port_read_dr(dev, buffer+i);
  if (ret < 0)
   return ret;
 }

 return nread;
}
