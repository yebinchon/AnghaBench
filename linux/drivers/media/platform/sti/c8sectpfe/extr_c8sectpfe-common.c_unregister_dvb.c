
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* remove_frontend ) (TYPE_1__*,int *) ;} ;
struct TYPE_5__ {TYPE_1__ dmx; } ;
struct stdemux {TYPE_3__ dvb_demux; int dmxdev; int hw_frontend; int mem_frontend; } ;


 int dvb_dmx_release (TYPE_3__*) ;
 int dvb_dmxdev_release (int *) ;
 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static void unregister_dvb(struct stdemux *demux)
{

 demux->dvb_demux.dmx.remove_frontend(&demux->dvb_demux.dmx,
           &demux->mem_frontend);

 demux->dvb_demux.dmx.remove_frontend(&demux->dvb_demux.dmx,
           &demux->hw_frontend);

 dvb_dmxdev_release(&demux->dmxdev);

 dvb_dmx_release(&demux->dvb_demux);
}
