
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int num_frontends_initialized; TYPE_1__* fe_adap; } ;
struct TYPE_2__ {int * fe; } ;


 int dvb_frontend_detach (int *) ;
 int dvb_unregister_frontend (int *) ;

int dvb_usb_adapter_frontend_exit(struct dvb_usb_adapter *adap)
{
 int i = adap->num_frontends_initialized - 1;


 for (; i >= 0; i--) {
  if (adap->fe_adap[i].fe != ((void*)0)) {
   dvb_unregister_frontend(adap->fe_adap[i].fe);
   dvb_frontend_detach(adap->fe_adap[i].fe);
  }
 }
 adap->num_frontends_initialized = 0;

 return 0;
}
