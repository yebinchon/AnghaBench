
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int name; } ;
struct mantis_pci {struct dvb_frontend* fe; struct mantis_hwconfig* hwconfig; struct i2c_adapter adapter; } ;
struct mantis_hwconfig {int reset; } ;
struct dvb_frontend {int dummy; } ;


 int EIO ;
 int MANTIS_ERROR ;
 int POWER_ON ;
 int dprintk (int ,int,char*,...) ;
 struct dvb_frontend* dvb_attach (int ,struct dvb_frontend*,struct i2c_adapter*,...) ;
 int env57h12d5_config ;
 int mantis_frontend_power (struct mantis_pci*,int ) ;
 int mantis_gpio_set_bits (struct mantis_pci*,int ,int) ;
 int mantis_vp3030_config ;
 int msleep (int) ;
 int tda665x_attach ;
 int zl10353_attach ;

__attribute__((used)) static int vp3030_frontend_init(struct mantis_pci *mantis, struct dvb_frontend *fe)
{
 struct i2c_adapter *adapter = &mantis->adapter;
 struct mantis_hwconfig *config = mantis->hwconfig;
 int err = 0;

 mantis_gpio_set_bits(mantis, config->reset, 0);
 msleep(100);
 err = mantis_frontend_power(mantis, POWER_ON);
 msleep(100);
 mantis_gpio_set_bits(mantis, config->reset, 1);

 if (err == 0) {
  msleep(250);
  dprintk(MANTIS_ERROR, 1, "Probing for 10353 (DVB-T)");
  fe = dvb_attach(zl10353_attach, &mantis_vp3030_config, adapter);

  if (!fe)
   return -1;

  dvb_attach(tda665x_attach, fe, &env57h12d5_config, adapter);
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
