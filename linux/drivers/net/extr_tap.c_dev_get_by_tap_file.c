
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_dev {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct major_info {int minor_lock; int minor_idr; } ;


 int dev_hold (struct net_device*) ;
 struct tap_dev* idr_find (int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct major_info* tap_get_major (int) ;

__attribute__((used)) static struct tap_dev *dev_get_by_tap_file(int major, int minor)
{
 struct net_device *dev = ((void*)0);
 struct tap_dev *tap;
 struct major_info *tap_major;

 rcu_read_lock();
 tap_major = tap_get_major(major);
 if (!tap_major) {
  tap = ((void*)0);
  goto unlock;
 }

 spin_lock(&tap_major->minor_lock);
 tap = idr_find(&tap_major->minor_idr, minor);
 if (tap) {
  dev = tap->dev;
  dev_hold(dev);
 }
 spin_unlock(&tap_major->minor_lock);

unlock:
 rcu_read_unlock();
 return tap;
}
