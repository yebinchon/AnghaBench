
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int* registers; scalar_t__ rd_index; scalar_t__ wr_index; int read_queue; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 size_t SYSCONFIG1 ;
 int SYSCONFIG1_RDS ;
 int poll_requested_events (struct poll_table_struct*) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int si470x_rds_on (struct si470x_device*) ;
 int v4l2_ctrl_poll (struct file*,struct poll_table_struct*) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static __poll_t si470x_fops_poll(struct file *file,
  struct poll_table_struct *pts)
{
 struct si470x_device *radio = video_drvdata(file);
 __poll_t req_events = poll_requested_events(pts);
 __poll_t retval = v4l2_ctrl_poll(file, pts);

 if (req_events & (EPOLLIN | EPOLLRDNORM)) {

  if ((radio->registers[SYSCONFIG1] & SYSCONFIG1_RDS) == 0)
   si470x_rds_on(radio);

  poll_wait(file, &radio->read_queue, pts);

  if (radio->rd_index != radio->wr_index)
   retval |= EPOLLIN | EPOLLRDNORM;
 }

 return retval;
}
