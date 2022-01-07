
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ddb {int dummy; } ;
typedef int ssize_t ;


 int ddbridge_flashread (struct ddb*,int ,char*,int,int) ;
 struct ddb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t bsnr_show(struct device *device,
    struct device_attribute *attr, char *buf)
{
 struct ddb *dev = dev_get_drvdata(device);
 char snr[16];

 ddbridge_flashread(dev, 0, snr, 0x10, 15);
 snr[15] = 0;
 return sprintf(buf, "%s\n", snr);
}
