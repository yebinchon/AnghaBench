
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int wait; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;
typedef int __poll_t ;


 int EPOLLPRI ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 scalar_t__ v4l2_event_pending (struct v4l2_fh*) ;

__poll_t v4l2_ctrl_poll(struct file *file, struct poll_table_struct *wait)
{
 struct v4l2_fh *fh = file->private_data;

 poll_wait(file, &fh->wait, wait);
 if (v4l2_event_pending(fh))
  return EPOLLPRI;
 return 0;
}
