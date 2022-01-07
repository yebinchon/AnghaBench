
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int owner; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int current_user_ns () ;
 int from_kuid_munged (int ,int ) ;
 struct tun_struct* netdev_priv (int ) ;
 int sprintf (char*,char*,...) ;
 int to_net_dev (struct device*) ;
 scalar_t__ uid_valid (int ) ;

__attribute__((used)) static ssize_t tun_show_owner(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct tun_struct *tun = netdev_priv(to_net_dev(dev));
 return uid_valid(tun->owner)?
  sprintf(buf, "%u\n",
   from_kuid_munged(current_user_ns(), tun->owner)):
  sprintf(buf, "-1\n");
}
