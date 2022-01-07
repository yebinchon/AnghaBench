
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ican3_dev {int fwinfo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ican3_dev* netdev_priv (int ) ;
 int scnprintf (char*,int ,char*,int ) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t ican3_sysfs_show_fwinfo(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct ican3_dev *mod = netdev_priv(to_net_dev(dev));

 return scnprintf(buf, PAGE_SIZE, "%s\n", mod->fwinfo);
}
