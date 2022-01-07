
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ddb {TYPE_1__* i2c; int i2c_num; } ;
typedef int ssize_t ;
struct TYPE_2__ {int adap; } ;


 struct ddb* dev_get_drvdata (struct device*) ;
 scalar_t__ i2c_read_regs16 (int *,int,int,unsigned char*,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t bpsnr_show(struct device *device,
     struct device_attribute *attr, char *buf)
{
 struct ddb *dev = dev_get_drvdata(device);
 unsigned char snr[32];

 if (!dev->i2c_num)
  return 0;

 if (i2c_read_regs16(&dev->i2c[0].adap,
       0x50, 0x0000, snr, 32) < 0 ||
     snr[0] == 0xff)
  return sprintf(buf, "NO SNR\n");
 snr[31] = 0;
 return sprintf(buf, "%s\n", snr);
}
