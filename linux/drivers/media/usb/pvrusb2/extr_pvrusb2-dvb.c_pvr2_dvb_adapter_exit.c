
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* close ) (TYPE_1__*) ;} ;
struct TYPE_4__ {TYPE_1__ dmx; } ;
struct pvr2_dvb_adapter {int dvb_adap; TYPE_2__ demux; int dmxdev; int dvb_net; } ;


 int PVR2_TRACE_INFO ;
 int dvb_dmx_release (TYPE_2__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int pvr2_trace (int ,char*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int pvr2_dvb_adapter_exit(struct pvr2_dvb_adapter *adap)
{
 pvr2_trace(PVR2_TRACE_INFO, "unregistering DVB devices");
 dvb_net_release(&adap->dvb_net);
 adap->demux.dmx.close(&adap->demux.dmx);
 dvb_dmxdev_release(&adap->dmxdev);
 dvb_dmx_release(&adap->demux);
 dvb_unregister_adapter(&adap->dvb_adap);
 return 0;
}
