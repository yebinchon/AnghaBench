
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* remove_frontend ) (TYPE_1__*,int *) ;} ;
struct TYPE_5__ {TYPE_1__ dmx; } ;
struct mantis_pci {int dvb_adapter; TYPE_3__ demux; int dmxdev; int fe_hw; int fe_mem; int dvbnet; int tasklet; scalar_t__ fe; } ;


 int MANTIS_DEBUG ;
 int MANTIS_ERROR ;
 int dprintk (int ,int,char*,...) ;
 int dvb_dmx_release (TYPE_3__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (scalar_t__) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (scalar_t__) ;
 int mantis_frontend_shutdown (struct mantis_pci*) ;
 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;
 int tasklet_kill (int *) ;

int mantis_dvb_exit(struct mantis_pci *mantis)
{
 int err;

 if (mantis->fe) {

  err = mantis_frontend_shutdown(mantis);
  if (err != 0)
   dprintk(MANTIS_ERROR, 1, "Frontend exit while POWER ON! <%d>", err);
  dvb_unregister_frontend(mantis->fe);
  dvb_frontend_detach(mantis->fe);
 }

 tasklet_kill(&mantis->tasklet);
 dvb_net_release(&mantis->dvbnet);

 mantis->demux.dmx.remove_frontend(&mantis->demux.dmx, &mantis->fe_mem);
 mantis->demux.dmx.remove_frontend(&mantis->demux.dmx, &mantis->fe_hw);

 dvb_dmxdev_release(&mantis->dmxdev);
 dvb_dmx_release(&mantis->demux);

 dprintk(MANTIS_DEBUG, 1, "dvb_unregister_adapter");
 dvb_unregister_adapter(&mantis->dvb_adapter);

 return 0;
}
