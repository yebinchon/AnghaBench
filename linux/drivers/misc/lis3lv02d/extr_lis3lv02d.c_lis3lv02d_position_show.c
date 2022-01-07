
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lis3lv02d* dev_get_drvdata (struct device*) ;
 int lis3lv02d_get_xyz (struct lis3lv02d*,int*,int*,int*) ;
 int lis3lv02d_sysfs_poweron (struct lis3lv02d*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t lis3lv02d_position_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct lis3lv02d *lis3 = dev_get_drvdata(dev);
 int x, y, z;

 lis3lv02d_sysfs_poweron(lis3);
 mutex_lock(&lis3->mutex);
 lis3lv02d_get_xyz(lis3, &x, &y, &z);
 mutex_unlock(&lis3->mutex);
 return sprintf(buf, "(%d,%d,%d)\n", x, y, z);
}
