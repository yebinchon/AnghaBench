
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vendor; } ;
struct scif_hw_dev {TYPE_1__ id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct scif_hw_dev* dev_to_scif (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t vendor_show(struct device *d,
      struct device_attribute *attr, char *buf)
{
 struct scif_hw_dev *dev = dev_to_scif(d);

 return sprintf(buf, "0x%04x\n", dev->id.vendor);
}
