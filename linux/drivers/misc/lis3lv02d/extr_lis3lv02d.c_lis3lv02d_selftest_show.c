
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s16 ;





 struct lis3lv02d* dev_get_drvdata (struct device*) ;
 int lis3lv02d_selftest (struct lis3lv02d*,int*) ;
 int lis3lv02d_sysfs_poweron (struct lis3lv02d*) ;
 int sprintf (char*,char*,char const*,int,int,int) ;

__attribute__((used)) static ssize_t lis3lv02d_selftest_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct lis3lv02d *lis3 = dev_get_drvdata(dev);
 s16 values[3];

 static const char ok[] = "OK";
 static const char fail[] = "FAIL";
 static const char irq[] = "FAIL_IRQ";
 const char *res;

 lis3lv02d_sysfs_poweron(lis3);
 switch (lis3lv02d_selftest(lis3, values)) {
 case 130:
  res = fail;
  break;
 case 129:
  res = irq;
  break;
 case 128:
 default:
  res = ok;
  break;
 }
 return sprintf(buf, "%s %d %d %d\n", res,
  values[0], values[1], values[2]);
}
