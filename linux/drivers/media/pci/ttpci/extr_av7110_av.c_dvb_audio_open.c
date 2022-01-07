
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct av7110* priv; } ;
struct TYPE_2__ {int stream_source; } ;
struct av7110 {TYPE_1__ audiostate; int aout; } ;


 int AUDIO_SOURCE_DEMUX ;
 int dprintk (int,char*,struct av7110*) ;
 int dvb_generic_open (struct inode*,struct file*) ;
 int dvb_ringbuffer_flush_spinlock_wakeup (int *) ;

__attribute__((used)) static int dvb_audio_open(struct inode *inode, struct file *file)
{
 struct dvb_device *dvbdev = file->private_data;
 struct av7110 *av7110 = dvbdev->priv;
 int err = dvb_generic_open(inode, file);

 dprintk(2, "av7110:%p, \n", av7110);

 if (err < 0)
  return err;
 dvb_ringbuffer_flush_spinlock_wakeup(&av7110->aout);
 av7110->audiostate.stream_source = AUDIO_SOURCE_DEMUX;
 return 0;
}
