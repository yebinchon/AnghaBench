
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si2168_config {int spectral_inversion; int if_port; int mdev; int * fe; int ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct si2157_config {int spectral_inversion; int if_port; int mdev; int * fe; int ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct i2c_adapter {int dummy; } ;
struct em28xx_dvb {void* i2c_client_demod; void* i2c_client_tuner; int ** fe; } ;
struct em28xx {scalar_t__ ts; size_t def_i2c_bus; int media_dev; struct i2c_adapter* i2c_adap; struct em28xx_dvb* dvb; } ;
typedef int si2157_config ;


 int ENODEV ;
 scalar_t__ PRIMARY_TS ;
 int SI2168_TS_SERIAL ;
 void* dvb_module_probe (char*,int *,struct i2c_adapter*,unsigned char,struct si2168_config*) ;
 int dvb_module_release (void*) ;
 int memset (struct si2168_config*,int ,int) ;

__attribute__((used)) static int em28174_dvb_init_hauppauge_wintv_dualhd_dvb(struct em28xx *dev)
{
 struct em28xx_dvb *dvb = dev->dvb;
 struct i2c_adapter *adapter;
 struct si2168_config si2168_config = {};
 struct si2157_config si2157_config = {};
 unsigned char addr;


 si2168_config.i2c_adapter = &adapter;
 si2168_config.fe = &dvb->fe[0];
 si2168_config.ts_mode = SI2168_TS_SERIAL;
 si2168_config.spectral_inversion = 1;
 addr = (dev->ts == PRIMARY_TS) ? 0x64 : 0x67;

 dvb->i2c_client_demod = dvb_module_probe("si2168", ((void*)0),
       &dev->i2c_adap[dev->def_i2c_bus],
       addr, &si2168_config);
 if (!dvb->i2c_client_demod)
  return -ENODEV;


 memset(&si2157_config, 0, sizeof(si2157_config));
 si2157_config.fe = dvb->fe[0];
 si2157_config.if_port = 1;



 addr = (dev->ts == PRIMARY_TS) ? 0x60 : 0x63;

 dvb->i2c_client_tuner = dvb_module_probe("si2157", ((void*)0),
       adapter,
       addr, &si2157_config);
 if (!dvb->i2c_client_tuner) {
  dvb_module_release(dvb->i2c_client_demod);
  return -ENODEV;
 }

 return 0;
}
