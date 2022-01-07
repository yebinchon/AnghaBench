
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si2168_config {int mdev; scalar_t__ if_port; int * fe; int ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct si2157_config {int mdev; scalar_t__ if_port; int * fe; int ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct i2c_adapter {int dummy; } ;
struct em28xx_dvb {void* i2c_client_demod; void* i2c_client_tuner; int ** fe; } ;
struct em28xx {size_t def_i2c_bus; int media_dev; struct i2c_adapter* i2c_adap; struct em28xx_dvb* dvb; } ;
typedef int si2157_config ;


 int ENODEV ;
 int SI2168_TS_PARALLEL ;
 void* dvb_module_probe (char*,char*,struct i2c_adapter*,int,struct si2168_config*) ;
 int dvb_module_release (void*) ;
 int memset (struct si2168_config*,int ,int) ;

__attribute__((used)) static int em28178_dvb_init_terratec_t2_stick_hd(struct em28xx *dev)
{
 struct em28xx_dvb *dvb = dev->dvb;
 struct i2c_adapter *adapter;
 struct si2168_config si2168_config = {};
 struct si2157_config si2157_config = {};


 si2168_config.i2c_adapter = &adapter;
 si2168_config.fe = &dvb->fe[0];
 si2168_config.ts_mode = SI2168_TS_PARALLEL;

 dvb->i2c_client_demod = dvb_module_probe("si2168", ((void*)0),
       &dev->i2c_adap[dev->def_i2c_bus],
       0x64, &si2168_config);
 if (!dvb->i2c_client_demod)
  return -ENODEV;


 memset(&si2157_config, 0, sizeof(si2157_config));
 si2157_config.fe = dvb->fe[0];
 si2157_config.if_port = 0;



 dvb->i2c_client_tuner = dvb_module_probe("si2157", "si2146",
       adapter,
       0x60, &si2157_config);
 if (!dvb->i2c_client_tuner) {
  dvb_module_release(dvb->i2c_client_demod);
  return -ENODEV;
 }

 return 0;
}
