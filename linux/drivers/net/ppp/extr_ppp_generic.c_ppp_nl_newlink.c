
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_config {int unit; int ifname_is_set; struct file* file; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct file {scalar_t__ private_data; int * f_op; } ;


 int EBADF ;
 int EBUSY ;
 size_t IFLA_IFNAME ;
 size_t IFLA_PPP_DEV_FD ;
 struct file* fget (int ) ;
 int fput (struct file*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int nla_get_s32 (struct nlattr*) ;
 int ppp_dev_configure (struct net*,struct net_device*,struct ppp_config*) ;
 int ppp_device_fops ;
 int ppp_mutex ;

__attribute__((used)) static int ppp_nl_newlink(struct net *src_net, struct net_device *dev,
     struct nlattr *tb[], struct nlattr *data[],
     struct netlink_ext_ack *extack)
{
 struct ppp_config conf = {
  .unit = -1,
  .ifname_is_set = 1,
 };
 struct file *file;
 int err;

 file = fget(nla_get_s32(data[IFLA_PPP_DEV_FD]));
 if (!file)
  return -EBADF;






 if (!mutex_trylock(&ppp_mutex)) {
  err = -EBUSY;
  goto out;
 }

 if (file->f_op != &ppp_device_fops || file->private_data) {
  err = -EBADF;
  goto out_unlock;
 }

 conf.file = file;






 if (!tb[IFLA_IFNAME])
  conf.ifname_is_set = 0;

 err = ppp_dev_configure(src_net, dev, &conf);

out_unlock:
 mutex_unlock(&ppp_mutex);
out:
 fput(file);

 return err;
}
