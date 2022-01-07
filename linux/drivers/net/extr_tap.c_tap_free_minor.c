
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_dev {int minor; } ;
struct major_info {int minor_lock; int minor_idr; } ;
typedef int dev_t ;


 int MAJOR (int ) ;
 int idr_remove (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct major_info* tap_get_major (int ) ;

void tap_free_minor(dev_t major, struct tap_dev *tap)
{
 struct major_info *tap_major;

 rcu_read_lock();
 tap_major = tap_get_major(MAJOR(major));
 if (!tap_major) {
  goto unlock;
 }

 spin_lock(&tap_major->minor_lock);
 if (tap->minor) {
  idr_remove(&tap_major->minor_idr, tap->minor);
  tap->minor = 0;
 }
 spin_unlock(&tap_major->minor_lock);

unlock:
 rcu_read_unlock();
}
