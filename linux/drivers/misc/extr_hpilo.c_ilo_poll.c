
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct ccb_data* private_data; } ;
struct ccb {int dummy; } ;
struct ccb_data {int ilo_hw; int ccb_waitq; struct ccb driver_ccb; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ ilo_pkt_recv (int ,struct ccb*) ;
 scalar_t__ is_channel_reset (struct ccb*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t ilo_poll(struct file *fp, poll_table *wait)
{
 struct ccb_data *data = fp->private_data;
 struct ccb *driver_ccb = &data->driver_ccb;

 poll_wait(fp, &data->ccb_waitq, wait);

 if (is_channel_reset(driver_ccb))
  return EPOLLERR;
 else if (ilo_pkt_recv(data->ilo_hw, driver_ccb))
  return EPOLLIN | EPOLLRDNORM;

 return 0;
}
