
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1_adapter {int demod_i2c_client; int tuner_i2c_client; int fe; } ;


 int dvb_module_release (int ) ;
 int dvb_unregister_frontend (int ) ;

__attribute__((used)) static void pt1_cleanup_frontend(struct pt1_adapter *adap)
{
 dvb_unregister_frontend(adap->fe);
 dvb_module_release(adap->tuner_i2c_client);
 dvb_module_release(adap->demod_i2c_client);
}
