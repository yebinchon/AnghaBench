
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_dev {int minor; int dev; } ;
struct major_info {int minor_lock; int minor_idr; } ;
typedef int dev_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_ATOMIC ;
 int MAJOR (int ) ;
 int TAP_NUM_DEVS ;
 int idr_alloc (int *,struct tap_dev*,int,int ,int ) ;
 int netdev_err (int ,char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct major_info* tap_get_major (int ) ;

int tap_get_minor(dev_t major, struct tap_dev *tap)
{
 int retval = -ENOMEM;
 struct major_info *tap_major;

 rcu_read_lock();
 tap_major = tap_get_major(MAJOR(major));
 if (!tap_major) {
  retval = -EINVAL;
  goto unlock;
 }

 spin_lock(&tap_major->minor_lock);
 retval = idr_alloc(&tap_major->minor_idr, tap, 1, TAP_NUM_DEVS, GFP_ATOMIC);
 if (retval >= 0) {
  tap->minor = retval;
 } else if (retval == -ENOSPC) {
  netdev_err(tap->dev, "Too many tap devices\n");
  retval = -EINVAL;
 }
 spin_unlock(&tap_major->minor_lock);

unlock:
 rcu_read_unlock();
 return retval < 0 ? retval : 0;
}
