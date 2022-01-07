
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int app_name ;


 struct genwqe_dev* dev_get_drvdata (struct device*) ;
 int genwqe_read_app_id (struct genwqe_dev*,char*,int) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t appid_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 char app_name[5];
 struct genwqe_dev *cd = dev_get_drvdata(dev);

 genwqe_read_app_id(cd, app_name, sizeof(app_name));
 return sprintf(buf, "%s\n", app_name);
}
