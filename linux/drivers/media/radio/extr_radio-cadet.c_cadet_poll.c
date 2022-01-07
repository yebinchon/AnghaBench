
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
struct cadet {scalar_t__ rdsstat; int lock; int read_queue; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ cadet_has_rds_data (struct cadet*) ;
 int cadet_start_rds (struct cadet*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_requested_events (struct poll_table_struct*) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int v4l2_ctrl_poll (struct file*,struct poll_table_struct*) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static __poll_t cadet_poll(struct file *file, struct poll_table_struct *wait)
{
 struct cadet *dev = video_drvdata(file);
 __poll_t req_events = poll_requested_events(wait);
 __poll_t res = v4l2_ctrl_poll(file, wait);

 poll_wait(file, &dev->read_queue, wait);
 if (dev->rdsstat == 0 && (req_events & (EPOLLIN | EPOLLRDNORM))) {
  mutex_lock(&dev->lock);
  if (dev->rdsstat == 0)
   cadet_start_rds(dev);
  mutex_unlock(&dev->lock);
 }
 if (cadet_has_rds_data(dev))
  res |= EPOLLIN | EPOLLRDNORM;
 return res;
}
