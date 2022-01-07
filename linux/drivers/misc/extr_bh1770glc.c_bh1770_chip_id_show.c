
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {char* chipname; int revision; } ;
typedef int ssize_t ;


 struct bh1770_chip* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*,int) ;

__attribute__((used)) static ssize_t bh1770_chip_id_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct bh1770_chip *chip = dev_get_drvdata(dev);
 return sprintf(buf, "%s rev %d\n", chip->chipname, chip->revision);
}
