
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* preboot_ver; } ;
struct hl_device {TYPE_1__ asic_prop; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hl_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t preboot_btl_ver_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct hl_device *hdev = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", hdev->asic_prop.preboot_ver);
}
