
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lme2510_state {int i2c_talk_onoff; int i2c_gate; int i2c_tuner_gate_w; int i2c_tuner_gate_r; int i2c_tuner_addr; void* dvb_usb_lme2510_firmware; int fe_read_ucblocks; int fe_read_ber; int fe_read_snr; int fe_read_signal_strength; int fe_read_status; int fe_set_voltage; void* tuner_config; } ;
struct dvb_usb_device {int * rc_map; int i2c_adap; TYPE_2__* udev; struct lme2510_state* priv; } ;
struct dvb_usb_adapter {TYPE_4__** fe; } ;
struct TYPE_7__ {int set_voltage; int read_ucblocks; int read_ber; int read_snr; int read_signal_strength; int read_status; } ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int idProduct; } ;
struct TYPE_6__ {TYPE_1__ descriptor; } ;


 int ENODEV ;
 void* TUNER_LG ;
 void* TUNER_RS2000 ;
 void* TUNER_S0194 ;
 void* TUNER_S7395 ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 int dm04_lme2510_set_voltage ;
 int dm04_read_ber ;
 int dm04_read_signal_strength ;
 int dm04_read_snr ;
 int dm04_read_status ;
 int dm04_read_ucblocks ;
 void* dvb_attach (int ,int *,int *) ;
 int dvb_frontend_detach (TYPE_4__*) ;
 int info (char*) ;
 int le16_to_cpu (int ) ;
 int lme_config ;
 int lme_firmware_switch (struct dvb_usb_device*,int) ;
 int lme_name (struct dvb_usb_adapter*) ;
 int m88rs2000_attach ;
 int m88rs2000_config ;
 int sharp_z0194_config ;
 int stv0288_attach ;
 int stv0299_attach ;
 int tda10086_attach ;
 int tda10086_config ;

__attribute__((used)) static int dm04_lme2510_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap_to_d(adap);
 struct lme2510_state *st = d->priv;
 int ret = 0;

 st->i2c_talk_onoff = 1;
 switch (le16_to_cpu(d->udev->descriptor.idProduct)) {
 case 0x1122:
 case 0x1120:
  st->i2c_gate = 4;
  adap->fe[0] = dvb_attach(tda10086_attach,
   &tda10086_config, &d->i2c_adap);
  if (adap->fe[0]) {
   info("TUN Found Frontend TDA10086");
   st->i2c_tuner_gate_w = 4;
   st->i2c_tuner_gate_r = 4;
   st->i2c_tuner_addr = 0x60;
   st->tuner_config = TUNER_LG;
   if (st->dvb_usb_lme2510_firmware != TUNER_LG) {
    st->dvb_usb_lme2510_firmware = TUNER_LG;
    ret = lme_firmware_switch(d, 1) ? 0 : -ENODEV;
   }
   break;
  }

  st->i2c_gate = 4;
  adap->fe[0] = dvb_attach(stv0299_attach,
    &sharp_z0194_config, &d->i2c_adap);
  if (adap->fe[0]) {
   info("FE Found Stv0299");
   st->i2c_tuner_gate_w = 4;
   st->i2c_tuner_gate_r = 5;
   st->i2c_tuner_addr = 0x60;
   st->tuner_config = TUNER_S0194;
   if (st->dvb_usb_lme2510_firmware != TUNER_S0194) {
    st->dvb_usb_lme2510_firmware = TUNER_S0194;
    ret = lme_firmware_switch(d, 1) ? 0 : -ENODEV;
   }
   break;
  }

  st->i2c_gate = 5;
  adap->fe[0] = dvb_attach(stv0288_attach, &lme_config,
   &d->i2c_adap);

  if (adap->fe[0]) {
   info("FE Found Stv0288");
   st->i2c_tuner_gate_w = 4;
   st->i2c_tuner_gate_r = 5;
   st->i2c_tuner_addr = 0x60;
   st->tuner_config = TUNER_S7395;
   if (st->dvb_usb_lme2510_firmware != TUNER_S7395) {
    st->dvb_usb_lme2510_firmware = TUNER_S7395;
    ret = lme_firmware_switch(d, 1) ? 0 : -ENODEV;
   }
   break;
  }

 case 0x22f0:
  st->i2c_gate = 5;
  adap->fe[0] = dvb_attach(m88rs2000_attach,
   &m88rs2000_config, &d->i2c_adap);

  if (adap->fe[0]) {
   info("FE Found M88RS2000");
   st->i2c_tuner_gate_w = 5;
   st->i2c_tuner_gate_r = 5;
   st->i2c_tuner_addr = 0x60;
   st->tuner_config = TUNER_RS2000;
   st->fe_set_voltage =
    adap->fe[0]->ops.set_voltage;
  }
  break;
 }

 if (adap->fe[0] == ((void*)0)) {
  info("DM04/QQBOX Not Powered up or not Supported");
  return -ENODEV;
 }

 if (ret) {
  if (adap->fe[0]) {
   dvb_frontend_detach(adap->fe[0]);
   adap->fe[0] = ((void*)0);
  }
  d->rc_map = ((void*)0);
  return -ENODEV;
 }

 st->fe_read_status = adap->fe[0]->ops.read_status;
 st->fe_read_signal_strength = adap->fe[0]->ops.read_signal_strength;
 st->fe_read_snr = adap->fe[0]->ops.read_snr;
 st->fe_read_ber = adap->fe[0]->ops.read_ber;
 st->fe_read_ucblocks = adap->fe[0]->ops.read_ucblocks;

 adap->fe[0]->ops.read_status = dm04_read_status;
 adap->fe[0]->ops.read_signal_strength = dm04_read_signal_strength;
 adap->fe[0]->ops.read_snr = dm04_read_snr;
 adap->fe[0]->ops.read_ber = dm04_read_ber;
 adap->fe[0]->ops.read_ucblocks = dm04_read_ucblocks;
 adap->fe[0]->ops.set_voltage = dm04_lme2510_set_voltage;

 ret = lme_name(adap);
 return ret;
}
