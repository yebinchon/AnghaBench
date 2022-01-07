
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_dvb_adapter {scalar_t__ feedcount; int lock; } ;
struct dvb_demux_feed {TYPE_1__* demux; } ;
struct TYPE_2__ {struct pvr2_dvb_adapter* priv; } ;


 int ENODEV ;
 int PVR2_TRACE_DVB_FEED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_dvb_stream_end (struct pvr2_dvb_adapter*) ;
 int pvr2_dvb_stream_start (struct pvr2_dvb_adapter*) ;
 int pvr2_trace (int ,char*) ;

__attribute__((used)) static int pvr2_dvb_ctrl_feed(struct dvb_demux_feed *dvbdmxfeed, int onoff)
{
 struct pvr2_dvb_adapter *adap = dvbdmxfeed->demux->priv;
 int ret = 0;

 if (adap == ((void*)0)) return -ENODEV;

 mutex_lock(&adap->lock);
 do {
  if (onoff) {
   if (!adap->feedcount) {
    pvr2_trace(PVR2_TRACE_DVB_FEED,
        "start feeding demux");
    ret = pvr2_dvb_stream_start(adap);
    if (ret < 0) break;
   }
   (adap->feedcount)++;
  } else if (adap->feedcount > 0) {
   (adap->feedcount)--;
   if (!adap->feedcount) {
    pvr2_trace(PVR2_TRACE_DVB_FEED,
        "stop feeding demux");
    pvr2_dvb_stream_end(adap);
   }
  }
 } while (0);
 mutex_unlock(&adap->lock);

 return ret;
}
