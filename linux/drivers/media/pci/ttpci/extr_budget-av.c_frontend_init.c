
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct saa7146_dev {TYPE_3__* pci; void* i2c_bitrate; } ;
struct TYPE_5__ {void* set_params; int init; } ;
struct TYPE_6__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; } ;
struct TYPE_8__ {struct dvb_frontend* dvb_frontend; int dvb_adapter; int i2c_adap; struct saa7146_dev* dev; } ;
struct budget_av {int reinitialise_demod; TYPE_4__ budget; } ;
struct TYPE_7__ {int subsystem_device; int subsystem_vendor; int device; int vendor; } ;


 int DVB_PLL_PHILIPS_SD1878_TDA8261 ;
 int SAA7146_GPIO_OUTHI ;
 int SAA7146_GPIO_OUTLO ;
 void* SAA7146_I2C_BUS_BIT_RATE_240 ;
 int cinergy_1200s_1894_0010_config ;
 int cinergy_1200s_config ;
 struct dvb_frontend* dvb_attach (int ,struct dvb_frontend*,int,...) ;
 int dvb_frontend_detach (struct dvb_frontend*) ;
 int dvb_pll_attach ;
 scalar_t__ dvb_register_frontend (int *,struct dvb_frontend*) ;
 int knc1_dvbs2_config ;
 int msleep (int) ;
 int philips_cu1216_config ;
 int philips_cu1216_config_altaddress ;
 int philips_cu1216_tda10023_config ;
 void* philips_cu1216_tuner_set_params ;
 int philips_sd1878_config ;
 void* philips_su1278_ty_ci_tuner_set_params ;
 int philips_tu1216_config ;
 int philips_tu1216_tuner_init ;
 void* philips_tu1216_tuner_set_params ;
 int pr_err (char*,...) ;
 int read_pwm (struct budget_av*) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int sd1878c_config ;
 int stb0899_attach ;
 int stv0299_attach ;
 int tda10021_attach ;
 int tda10023_attach ;
 int tda10046_attach ;
 int tda8261_attach ;
 int tua6100_attach ;
 int typhoon_config ;

__attribute__((used)) static void frontend_init(struct budget_av *budget_av)
{
 struct saa7146_dev * saa = budget_av->budget.dev;
 struct dvb_frontend * fe = ((void*)0);


 saa7146_setgpio(saa, 0, SAA7146_GPIO_OUTLO);


 msleep(100);


 switch (saa->pci->subsystem_device) {
  case 136:
  case 148:
  case 128:
  case 152:
  case 147:
  case 144:
  case 143:
  case 145:
   saa7146_setgpio(saa, 3, SAA7146_GPIO_OUTHI);
   break;
 }

 switch (saa->pci->subsystem_device) {

 case 137:




  budget_av->reinitialise_demod = 1;

 case 136:
 case 139:
  if (saa->pci->subsystem_vendor == 0x1894) {
   fe = dvb_attach(stv0299_attach, &cinergy_1200s_1894_0010_config,
          &budget_av->budget.i2c_adap);
   if (fe) {
    dvb_attach(tua6100_attach, fe, 0x60, &budget_av->budget.i2c_adap);
   }
  } else {
   fe = dvb_attach(stv0299_attach, &typhoon_config,
          &budget_av->budget.i2c_adap);
   if (fe) {
    fe->ops.tuner_ops.set_params = philips_su1278_ty_ci_tuner_set_params;
   }
  }
  break;

 case 135:
 case 133:
 case 134:
 case 141:
 case 140:
 case 138:
  fe = dvb_attach(stv0299_attach, &philips_sd1878_config,
    &budget_av->budget.i2c_adap);
  if (fe) {
   dvb_attach(dvb_pll_attach, fe, 0x60,
       &budget_av->budget.i2c_adap,
       DVB_PLL_PHILIPS_SD1878_TDA8261);
  }
  break;

 case 132:
  fe = dvb_attach(stv0299_attach, &typhoon_config,
        &budget_av->budget.i2c_adap);
  if (fe) {
   fe->ops.tuner_ops.set_params = philips_su1278_ty_ci_tuner_set_params;
  }
  break;
 case 144:
 case 143:
 case 145:
  budget_av->reinitialise_demod = 1;
  if ((fe = dvb_attach(stb0899_attach, &knc1_dvbs2_config, &budget_av->budget.i2c_adap)))
   dvb_attach(tda8261_attach, fe, &sd1878c_config, &budget_av->budget.i2c_adap);

  break;
 case 142:
  fe = dvb_attach(stv0299_attach, &cinergy_1200s_config,
        &budget_av->budget.i2c_adap);
  if (fe) {
   fe->ops.tuner_ops.set_params = philips_su1278_ty_ci_tuner_set_params;
  }
  break;

 case 150:
 case 148:
 case 154:
 case 152:
  budget_av->reinitialise_demod = 1;
  budget_av->budget.dev->i2c_bitrate = SAA7146_I2C_BUS_BIT_RATE_240;
  fe = dvb_attach(tda10021_attach, &philips_cu1216_config,
         &budget_av->budget.i2c_adap,
         read_pwm(budget_av));
  if (fe == ((void*)0))
   fe = dvb_attach(tda10021_attach, &philips_cu1216_config_altaddress,
          &budget_av->budget.i2c_adap,
          read_pwm(budget_av));
  if (fe) {
   fe->ops.tuner_ops.set_params = philips_cu1216_tuner_set_params;
  }
  break;

 case 151:
 case 153:
 case 149:
 case 146:
 case 147:
  budget_av->reinitialise_demod = 1;
  budget_av->budget.dev->i2c_bitrate = SAA7146_I2C_BUS_BIT_RATE_240;
  fe = dvb_attach(tda10023_attach,
   &philips_cu1216_tda10023_config,
   &budget_av->budget.i2c_adap,
   read_pwm(budget_av));
  if (fe) {
   fe->ops.tuner_ops.set_params = philips_cu1216_tuner_set_params;
  }
  break;

 case 130:
 case 129:
 case 128:
 case 131:
  budget_av->reinitialise_demod = 1;
  fe = dvb_attach(tda10046_attach, &philips_tu1216_config,
         &budget_av->budget.i2c_adap);
  if (fe) {
   fe->ops.tuner_ops.init = philips_tu1216_tuner_init;
   fe->ops.tuner_ops.set_params = philips_tu1216_tuner_set_params;
  }
  break;
 }

 if (fe == ((void*)0)) {
  pr_err("A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\n",
         saa->pci->vendor,
         saa->pci->device,
         saa->pci->subsystem_vendor,
         saa->pci->subsystem_device);
  return;
 }

 budget_av->budget.dvb_frontend = fe;

 if (dvb_register_frontend(&budget_av->budget.dvb_adapter,
      budget_av->budget.dvb_frontend)) {
  pr_err("Frontend registration failed!\n");
  dvb_frontend_detach(budget_av->budget.dvb_frontend);
  budget_av->budget.dvb_frontend = ((void*)0);
 }
}
