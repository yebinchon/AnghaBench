
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_camera {int sio_full; int wait_frame; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int is_present (struct stk_camera*) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int v4l2_ctrl_poll (struct file*,int *) ;
 struct stk_camera* video_drvdata (struct file*) ;

__attribute__((used)) static __poll_t v4l_stk_poll(struct file *fp, poll_table *wait)
{
 struct stk_camera *dev = video_drvdata(fp);
 __poll_t res = v4l2_ctrl_poll(fp, wait);

 poll_wait(fp, &dev->wait_frame, wait);

 if (!is_present(dev))
  return EPOLLERR;

 if (!list_empty(&dev->sio_full))
  return res | EPOLLIN | EPOLLRDNORM;

 return res;
}
