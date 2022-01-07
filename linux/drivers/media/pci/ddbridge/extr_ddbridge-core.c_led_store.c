
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct ddb {int leds; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int ddb_set_led (struct ddb*,int,scalar_t__) ;
 struct ddb* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,scalar_t__*) ;

__attribute__((used)) static ssize_t led_store(struct device *device,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct ddb *dev = dev_get_drvdata(device);
 int num = attr->attr.name[3] - 0x30;
 u32 val;

 if (sscanf(buf, "%u\n", &val) != 1)
  return -EINVAL;
 if (val)
  dev->leds |= (1 << num);
 else
  dev->leds &= ~(1 << num);
 ddb_set_led(dev, num, val);
 return count;
}
