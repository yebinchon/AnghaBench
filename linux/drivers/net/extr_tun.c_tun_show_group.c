
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int group; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int current_user_ns () ;
 int from_kgid_munged (int ,int ) ;
 scalar_t__ gid_valid (int ) ;
 struct tun_struct* netdev_priv (int ) ;
 int sprintf (char*,char*,...) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t tun_show_group(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct tun_struct *tun = netdev_priv(to_net_dev(dev));
 return gid_valid(tun->group) ?
  sprintf(buf, "%u\n",
   from_kgid_munged(current_user_ns(), tun->group)):
  sprintf(buf, "-1\n");
}
