
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_adapter {int name; } ;
struct mantis_pci {struct dvb_frontend* fe; struct i2c_adapter adapter; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_3__ {int demod_address; } ;


 int EIO ;
 int MANTIS_ERROR ;
 int POWER_ON ;
 int dprintk (int ,int,char*,...) ;
 struct dvb_frontend* dvb_attach (int ,TYPE_1__*,struct i2c_adapter*) ;
 int mantis_frontend_power (struct mantis_pci*,int ) ;
 int mantis_frontend_soft_reset (struct mantis_pci*) ;
 int mb86a16_attach ;
 int msleep (int) ;
 TYPE_1__ vp1034_mb86a16_config ;

__attribute__((used)) static int vp1034_frontend_init(struct mantis_pci *mantis, struct dvb_frontend *fe)
{
 struct i2c_adapter *adapter = &mantis->adapter;

 int err = 0;

 err = mantis_frontend_power(mantis, POWER_ON);
 if (err == 0) {
  mantis_frontend_soft_reset(mantis);
  msleep(250);

  dprintk(MANTIS_ERROR, 1, "Probing for MB86A16 (DVB-S/DSS)");
  fe = dvb_attach(mb86a16_attach, &vp1034_mb86a16_config, adapter);
  if (fe) {
   dprintk(MANTIS_ERROR, 1,
   "found MB86A16 DVB-S/DSS frontend @0x%02x",
   vp1034_mb86a16_config.demod_address);

  } else {
   return -1;
  }
 } else {
  dprintk(MANTIS_ERROR, 1, "Frontend on <%s> POWER ON failed! <%d>",
   adapter->name,
   err);

  return -EIO;
 }
 mantis->fe = fe;
 dprintk(MANTIS_ERROR, 1, "Done!");

 return 0;
}
