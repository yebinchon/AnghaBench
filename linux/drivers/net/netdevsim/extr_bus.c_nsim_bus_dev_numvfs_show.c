
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_bus_dev {int num_vfs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct nsim_bus_dev* to_nsim_bus_dev (struct device*) ;

__attribute__((used)) static ssize_t
nsim_bus_dev_numvfs_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct nsim_bus_dev *nsim_bus_dev = to_nsim_bus_dev(dev);

 return sprintf(buf, "%u\n", nsim_bus_dev->num_vfs);
}
