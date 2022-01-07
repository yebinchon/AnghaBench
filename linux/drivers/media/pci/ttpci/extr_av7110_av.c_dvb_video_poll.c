
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int f_flags; struct dvb_device* private_data; } ;
struct dvb_device {struct av7110* priv; } ;
struct TYPE_4__ {scalar_t__ eventw; scalar_t__ eventr; int wait_queue; } ;
struct TYPE_3__ {int queue; } ;
struct av7110 {scalar_t__ playing; TYPE_2__ video_events; TYPE_1__ avout; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLWRNORM ;
 scalar_t__ FREE_COND ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int dprintk (int,char*,struct av7110*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t dvb_video_poll(struct file *file, poll_table *wait)
{
 struct dvb_device *dvbdev = file->private_data;
 struct av7110 *av7110 = dvbdev->priv;
 __poll_t mask = 0;

 dprintk(2, "av7110:%p, \n", av7110);

 if ((file->f_flags & O_ACCMODE) != O_RDONLY)
  poll_wait(file, &av7110->avout.queue, wait);

 poll_wait(file, &av7110->video_events.wait_queue, wait);

 if (av7110->video_events.eventw != av7110->video_events.eventr)
  mask = EPOLLPRI;

 if ((file->f_flags & O_ACCMODE) != O_RDONLY) {
  if (av7110->playing) {
   if (FREE_COND)
    mask |= (EPOLLOUT | EPOLLWRNORM);
  } else {

   mask |= (EPOLLOUT | EPOLLWRNORM);
  }
 }

 return mask;
}
