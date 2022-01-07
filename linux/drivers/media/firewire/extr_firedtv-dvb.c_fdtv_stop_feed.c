
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct firedtv {int demux_mutex; } ;
struct dvb_demux_feed {scalar_t__ type; int ts_type; size_t pes_type; scalar_t__ priv; struct dvb_demux* demux; } ;
struct TYPE_4__ {TYPE_1__* frontend; } ;
struct dvb_demux {int* pids; int ** pesfilter; TYPE_2__ dmx; struct firedtv* priv; } ;
struct TYPE_3__ {scalar_t__ source; } ;


 scalar_t__ DMX_MEMORY_FE ;
 size_t DMX_PES_OTHER ;
 scalar_t__ DMX_TYPE_TS ;
 int EINTR ;
 int EINVAL ;
 int TS_DECODER ;
 int TS_PACKET ;
 int avc_tuner_set_pids (struct firedtv*,int,int *) ;
 int collect_channels (struct firedtv*,int*,int *) ;
 int dealloc_channel (struct firedtv*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int fdtv_stop_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux *demux = dvbdmxfeed->demux;
 struct firedtv *fdtv = demux->priv;
 int pidc, c, ret;
 u16 pids[16];

 if (dvbdmxfeed->type == DMX_TYPE_TS &&
     !((dvbdmxfeed->ts_type & TS_PACKET) &&
       (demux->dmx.frontend->source != DMX_MEMORY_FE))) {

  if (dvbdmxfeed->ts_type & TS_DECODER) {
   if (dvbdmxfeed->pes_type >= DMX_PES_OTHER ||
       !demux->pesfilter[dvbdmxfeed->pes_type])
    return -EINVAL;

   demux->pids[dvbdmxfeed->pes_type] |= 0x8000;
   demux->pesfilter[dvbdmxfeed->pes_type] = ((void*)0);
  }

  if (!(dvbdmxfeed->ts_type & TS_DECODER &&
        dvbdmxfeed->pes_type < DMX_PES_OTHER))
   return 0;
 }

 if (mutex_lock_interruptible(&fdtv->demux_mutex))
  return -EINTR;

 c = (unsigned long)dvbdmxfeed->priv;
 dealloc_channel(fdtv, c);
 collect_channels(fdtv, &pidc, pids);

 ret = avc_tuner_set_pids(fdtv, pidc, pids);

 mutex_unlock(&fdtv->demux_mutex);

 return ret;
}
