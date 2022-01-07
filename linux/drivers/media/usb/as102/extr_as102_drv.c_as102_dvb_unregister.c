
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as102_dev_t {int name; int dvb_adap; int dvb_dmx; int dvb_dmxdev; int dvb_fe; } ;


 int dvb_dmx_release (int *) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (int ) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (int ) ;
 int pr_info (char*,int ) ;

void as102_dvb_unregister(struct as102_dev_t *as102_dev)
{

 dvb_unregister_frontend(as102_dev->dvb_fe);


 dvb_frontend_detach(as102_dev->dvb_fe);


 dvb_dmxdev_release(&as102_dev->dvb_dmxdev);
 dvb_dmx_release(&as102_dev->dvb_dmx);


 dvb_unregister_adapter(&as102_dev->dvb_adap);

 pr_info("Unregistered device %s", as102_dev->name);
}
