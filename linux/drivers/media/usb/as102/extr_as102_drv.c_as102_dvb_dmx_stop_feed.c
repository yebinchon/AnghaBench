
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {int pid; int index; struct dvb_demux* demux; } ;
struct dvb_demux {struct as102_dev_t* priv; } ;
struct as102_dev_t {scalar_t__ streaming; int sem; } ;


 int ERESTARTSYS ;
 int as102_stop_stream (struct as102_dev_t*) ;
 int as10x_pid_filter (struct as102_dev_t*,int ,int ,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pid_filtering ;

__attribute__((used)) static int as102_dvb_dmx_stop_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux *demux = dvbdmxfeed->demux;
 struct as102_dev_t *as102_dev = demux->priv;

 if (mutex_lock_interruptible(&as102_dev->sem))
  return -ERESTARTSYS;

 if (--as102_dev->streaming == 0)
  as102_stop_stream(as102_dev);

 if (pid_filtering)
  as10x_pid_filter(as102_dev, dvbdmxfeed->index,
     dvbdmxfeed->pid, 0);

 mutex_unlock(&as102_dev->sem);
 return 0;
}
