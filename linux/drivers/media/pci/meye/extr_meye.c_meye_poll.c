
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int lock; int doneq; int proc_list; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ kfifo_len (int *) ;
 TYPE_1__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int v4l2_ctrl_poll (struct file*,int *) ;

__attribute__((used)) static __poll_t meye_poll(struct file *file, poll_table *wait)
{
 __poll_t res = v4l2_ctrl_poll(file, wait);

 mutex_lock(&meye.lock);
 poll_wait(file, &meye.proc_list, wait);
 if (kfifo_len(&meye.doneq))
  res |= EPOLLIN | EPOLLRDNORM;
 mutex_unlock(&meye.lock);
 return res;
}
