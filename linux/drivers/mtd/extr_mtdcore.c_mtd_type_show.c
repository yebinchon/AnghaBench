
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
 int PAGE_SIZE ;
 struct mtd_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t mtd_type_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct mtd_info *mtd = dev_get_drvdata(dev);
 char *type;

 switch (mtd->type) {
 case 135:
  type = "absent";
  break;
 case 130:
  type = "ram";
  break;
 case 129:
  type = "rom";
  break;
 case 131:
  type = "nor";
  break;
 case 132:
  type = "nand";
  break;
 case 134:
  type = "dataflash";
  break;
 case 128:
  type = "ubi";
  break;
 case 133:
  type = "mlc-nand";
  break;
 default:
  type = "unknown";
 }

 return snprintf(buf, PAGE_SIZE, "%s\n", type);
}
