
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct ddb* private_data; } ;
struct ddb {int dev; } ;


 long ENOTTY ;
 int dev_warn (int ,char*,unsigned int,unsigned long) ;

__attribute__((used)) static long ddb_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct ddb *dev = file->private_data;

 dev_warn(dev->dev, "DDB IOCTLs unsupported (cmd: %d, arg: %lu)\n",
   cmd, arg);

 return -ENOTTY;
}
