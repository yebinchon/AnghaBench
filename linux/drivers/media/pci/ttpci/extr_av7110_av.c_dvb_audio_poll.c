
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct av7110* priv; } ;
struct TYPE_2__ {int queue; } ;
struct av7110 {TYPE_1__ aout; scalar_t__ playing; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLOUT ;
 int EPOLLWRNORM ;
 int dprintk (int,char*,struct av7110*) ;
 int dvb_ringbuffer_free (TYPE_1__*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t dvb_audio_poll(struct file *file, poll_table *wait)
{
 struct dvb_device *dvbdev = file->private_data;
 struct av7110 *av7110 = dvbdev->priv;
 __poll_t mask = 0;

 dprintk(2, "av7110:%p, \n", av7110);

 poll_wait(file, &av7110->aout.queue, wait);

 if (av7110->playing) {
  if (dvb_ringbuffer_free(&av7110->aout) >= 20 * 1024)
   mask |= (EPOLLOUT | EPOLLWRNORM);
 } else
  mask = (EPOLLOUT | EPOLLWRNORM);

 return mask;
}
