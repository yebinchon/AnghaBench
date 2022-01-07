
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct ttusb {TYPE_8__* fe; int adapter; TYPE_4__* dev; int i2c_adap; int revision; } ;
struct TYPE_12__ {int set_params; int init; } ;
struct TYPE_13__ {TYPE_1__ tuner_ops; void* set_voltage; } ;
struct TYPE_17__ {TYPE_2__ ops; } ;
struct TYPE_16__ {int inittab; } ;
struct TYPE_14__ {int idProduct; int idVendor; } ;
struct TYPE_15__ {TYPE_3__ descriptor; } ;


 int TTUSB_REV_2_2 ;
 int alps_bsbe1_inittab ;
 TYPE_5__ alps_stv0299_config ;
 int alps_tdbe2_config ;
 int alps_tdbe2_tuner_set_params ;
 TYPE_5__ alps_tdmb7_config ;
 int alps_tdmb7_tuner_set_params ;
 int cx22700_attach ;
 void* dvb_attach (int ,...) ;
 int dvb_frontend_detach (TYPE_8__*) ;
 scalar_t__ dvb_register_frontend (int *,TYPE_8__*) ;
 TYPE_5__ dvbc_philips_tdm1316l_config ;
 int dvbc_philips_tdm1316l_tuner_set_params ;
 int le16_to_cpu (int ) ;
 int lnbp21_attach ;
 TYPE_5__ philips_tdm1316l_config ;
 int philips_tdm1316l_tuner_init ;
 int philips_tdm1316l_tuner_set_params ;
 int philips_tsa5059_tuner_set_params ;
 int printk (char*,...) ;
 int read_pwm (struct ttusb*) ;
 int stv0297_attach ;
 int stv0299_attach ;
 int tda10046_attach ;
 int tda8083_attach ;
 TYPE_5__ ttusb_novas_grundig_29504_491_config ;
 int ttusb_novas_grundig_29504_491_tuner_set_params ;
 void* ttusb_set_voltage ;
 int ves1820_attach ;

__attribute__((used)) static void frontend_init(struct ttusb* ttusb)
{
 switch(le16_to_cpu(ttusb->dev->descriptor.idProduct)) {
 case 0x1003:

  ttusb->fe = dvb_attach(stv0299_attach, &alps_stv0299_config, &ttusb->i2c_adap);
  if (ttusb->fe != ((void*)0)) {
   ttusb->fe->ops.tuner_ops.set_params = philips_tsa5059_tuner_set_params;

   if(ttusb->revision == TTUSB_REV_2_2) {
    alps_stv0299_config.inittab = alps_bsbe1_inittab;
    dvb_attach(lnbp21_attach, ttusb->fe, &ttusb->i2c_adap, 0, 0);
   } else {
    ttusb->fe->ops.set_voltage = ttusb_set_voltage;
   }
   break;
  }


  ttusb->fe = dvb_attach(tda8083_attach, &ttusb_novas_grundig_29504_491_config, &ttusb->i2c_adap);
  if (ttusb->fe != ((void*)0)) {
   ttusb->fe->ops.tuner_ops.set_params = ttusb_novas_grundig_29504_491_tuner_set_params;
   ttusb->fe->ops.set_voltage = ttusb_set_voltage;
   break;
  }
  break;

 case 0x1004:
  ttusb->fe = dvb_attach(ves1820_attach, &alps_tdbe2_config, &ttusb->i2c_adap, read_pwm(ttusb));
  if (ttusb->fe != ((void*)0)) {
   ttusb->fe->ops.tuner_ops.set_params = alps_tdbe2_tuner_set_params;
   break;
  }

  ttusb->fe = dvb_attach(stv0297_attach, &dvbc_philips_tdm1316l_config, &ttusb->i2c_adap);
  if (ttusb->fe != ((void*)0)) {
   ttusb->fe->ops.tuner_ops.set_params = dvbc_philips_tdm1316l_tuner_set_params;
   break;
  }
  break;

 case 0x1005:

  ttusb->fe = dvb_attach(cx22700_attach, &alps_tdmb7_config, &ttusb->i2c_adap);
  if (ttusb->fe != ((void*)0)) {
   ttusb->fe->ops.tuner_ops.set_params = alps_tdmb7_tuner_set_params;
   break;
  }


  ttusb->fe = dvb_attach(tda10046_attach, &philips_tdm1316l_config, &ttusb->i2c_adap);
  if (ttusb->fe != ((void*)0)) {
   ttusb->fe->ops.tuner_ops.init = philips_tdm1316l_tuner_init;
   ttusb->fe->ops.tuner_ops.set_params = philips_tdm1316l_tuner_set_params;
   break;
  }
  break;
 }

 if (ttusb->fe == ((void*)0)) {
  printk("dvb-ttusb-budget: A frontend driver was not found for device [%04x:%04x]\n",
         le16_to_cpu(ttusb->dev->descriptor.idVendor),
         le16_to_cpu(ttusb->dev->descriptor.idProduct));
 } else {
  if (dvb_register_frontend(&ttusb->adapter, ttusb->fe)) {
   printk("dvb-ttusb-budget: Frontend registration failed!\n");
   dvb_frontend_detach(ttusb->fe);
   ttusb->fe = ((void*)0);
  }
 }
}
