
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngene_channel {struct ngene* dev; } ;
struct dvb_ringbuffer {int queue; } ;
struct ngene {struct dvb_ringbuffer tsout_rbuf; struct dvb_ringbuffer tsin_rbuf; } ;
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct ngene_channel* priv; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int dvb_ringbuffer_empty (struct dvb_ringbuffer*) ;
 int dvb_ringbuffer_free (struct dvb_ringbuffer*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t ts_poll(struct file *file, poll_table *wait)
{
 struct dvb_device *dvbdev = file->private_data;
 struct ngene_channel *chan = dvbdev->priv;
 struct ngene *dev = chan->dev;
 struct dvb_ringbuffer *rbuf = &dev->tsin_rbuf;
 struct dvb_ringbuffer *wbuf = &dev->tsout_rbuf;
 __poll_t mask = 0;

 poll_wait(file, &rbuf->queue, wait);
 poll_wait(file, &wbuf->queue, wait);

 if (!dvb_ringbuffer_empty(rbuf))
  mask |= EPOLLIN | EPOLLRDNORM;
 if (dvb_ringbuffer_free(wbuf) >= 188)
  mask |= EPOLLOUT | EPOLLWRNORM;

 return mask;
}
