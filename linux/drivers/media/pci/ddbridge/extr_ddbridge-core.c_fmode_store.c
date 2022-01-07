
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct ddb {int * link; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int ddb_lnb_init_fmode (struct ddb*,int *,unsigned int) ;
 struct ddb* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static ssize_t fmode_store(struct device *device, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct ddb *dev = dev_get_drvdata(device);
 int num = attr->attr.name[5] - 0x30;
 unsigned int val;

 if (sscanf(buf, "%u\n", &val) != 1)
  return -EINVAL;
 if (val > 3)
  return -EINVAL;
 ddb_lnb_init_fmode(dev, &dev->link[num], val);
 return count;
}
