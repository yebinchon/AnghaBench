
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ddb {int dummy; } ;
typedef int ssize_t ;


 int GPIO_OUTPUT ;
 int ddbreadl (struct ddb*,int ) ;
 struct ddb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fan_show(struct device *device,
   struct device_attribute *attr, char *buf)
{
 struct ddb *dev = dev_get_drvdata(device);
 u32 val;

 val = ddbreadl(dev, GPIO_OUTPUT) & 1;
 return sprintf(buf, "%d\n", val);
}
