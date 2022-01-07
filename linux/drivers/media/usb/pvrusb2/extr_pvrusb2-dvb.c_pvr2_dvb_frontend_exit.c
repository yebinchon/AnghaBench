
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_dvb_adapter {int ** i2c_client_demod; int * i2c_client_tuner; int ** fe; } ;


 int dvb_frontend_detach (int *) ;
 int dvb_module_release (int *) ;
 int dvb_unregister_frontend (int *) ;

__attribute__((used)) static int pvr2_dvb_frontend_exit(struct pvr2_dvb_adapter *adap)
{
 if (adap->fe[1]) {
  dvb_unregister_frontend(adap->fe[1]);
  dvb_frontend_detach(adap->fe[1]);
  adap->fe[1] = ((void*)0);
 }
 if (adap->fe[0]) {
  dvb_unregister_frontend(adap->fe[0]);
  dvb_frontend_detach(adap->fe[0]);
  adap->fe[0] = ((void*)0);
 }

 dvb_module_release(adap->i2c_client_tuner);
 adap->i2c_client_tuner = ((void*)0);
 dvb_module_release(adap->i2c_client_demod[1]);
 adap->i2c_client_demod[1] = ((void*)0);
 dvb_module_release(adap->i2c_client_demod[0]);
 adap->i2c_client_demod[0] = ((void*)0);

 return 0;
}
