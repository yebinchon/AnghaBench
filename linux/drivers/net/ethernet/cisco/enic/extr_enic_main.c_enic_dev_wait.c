
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev {int dummy; } ;


 int BUG_ON (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 int in_interrupt () ;
 int jiffies ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_after (unsigned long,int) ;

__attribute__((used)) static int enic_dev_wait(struct vnic_dev *vdev,
 int (*start)(struct vnic_dev *, int),
 int (*finished)(struct vnic_dev *, int *),
 int arg)
{
 unsigned long time;
 int done;
 int err;

 BUG_ON(in_interrupt());

 err = start(vdev, arg);
 if (err)
  return err;




 time = jiffies + (HZ * 2);
 do {

  err = finished(vdev, &done);
  if (err)
   return err;

  if (done)
   return 0;

  schedule_timeout_uninterruptible(HZ / 10);

 } while (time_after(time, jiffies));

 return -ETIMEDOUT;
}
