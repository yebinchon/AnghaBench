
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ican3_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ican3_set_termination (struct ican3_dev*,unsigned long) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 struct ican3_dev* netdev_priv (int ) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t ican3_sysfs_set_term(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct ican3_dev *mod = netdev_priv(to_net_dev(dev));
 unsigned long enable;
 int ret;

 if (kstrtoul(buf, 0, &enable))
  return -EINVAL;

 ret = ican3_set_termination(mod, enable);
 if (ret)
  return ret;

 return count;
}
