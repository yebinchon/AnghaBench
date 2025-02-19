
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct niu_parent {int plat_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;






 struct niu_parent* dev_get_platdata (int *) ;
 int sprintf (char*,char*,char const*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t show_plat_type(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct platform_device *plat_dev = to_platform_device(dev);
 struct niu_parent *p = dev_get_platdata(&plat_dev->dev);
 const char *type_str;

 switch (p->plat_type) {
 case 131:
  type_str = "atlas";
  break;
 case 130:
  type_str = "niu";
  break;
 case 129:
  type_str = "vf_p0";
  break;
 case 128:
  type_str = "vf_p1";
  break;
 default:
  type_str = "unknown";
  break;
 }

 return sprintf(buf, "%s\n", type_str);
}
