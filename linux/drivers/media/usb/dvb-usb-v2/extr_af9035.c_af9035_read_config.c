
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_interface {int dev; } ;
struct state {int* af9033_i2c_addr; int it930x_addresses; int chip_type; int chip_version; int ir_mode; int ir_type; int* eeprom; int dual_mode; int no_read; TYPE_3__* af9033_config; scalar_t__ no_eeprom; } ;
struct dvb_usb_device {TYPE_2__* udev; struct usb_interface* intf; } ;
struct TYPE_6__ {int dyn0_clk; int tuner; int spec_inv; int clock; int ts_mode; void* adc_multiplier; } ;
struct TYPE_4__ {int idProduct; int idVendor; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 void* AF9033_ADC_MULTIPLIER_2X ;
 int AF9033_TS_MODE_SERIAL ;
 int AF9033_TS_MODE_USB ;
 int ARRAY_SIZE (TYPE_3__*) ;
 unsigned int EEPROM_1_IF_H ;
 unsigned int EEPROM_1_IF_L ;
 unsigned int EEPROM_1_TUNER_ID ;
 size_t EEPROM_2ND_DEMOD_ADDR ;
 size_t EEPROM_IR_MODE ;
 size_t EEPROM_IR_TYPE ;

 int USB_PID_AVERMEDIA_TD310 ;

 int USB_VID_AVERMEDIA ;
 int af9035_rd_reg (struct dvb_usb_device*,int,int*) ;
 int * clock_lut_af9035 ;
 int * clock_lut_it9135 ;
 struct state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int af9035_read_config(struct dvb_usb_device *d)
{
 struct usb_interface *intf = d->intf;
 struct state *state = d_to_priv(d);
 int ret, i;
 u8 tmp;
 u16 tmp16;


 state->af9033_i2c_addr[0] = 0x1c;
 state->af9033_i2c_addr[1] = 0x1d;
 state->af9033_config[0].adc_multiplier = AF9033_ADC_MULTIPLIER_2X;
 state->af9033_config[1].adc_multiplier = AF9033_ADC_MULTIPLIER_2X;
 state->af9033_config[0].ts_mode = AF9033_TS_MODE_USB;
 state->af9033_config[1].ts_mode = AF9033_TS_MODE_SERIAL;
 state->it930x_addresses = 0;

 if (state->chip_type == 0x9135) {

  state->af9033_config[0].dyn0_clk = 1;
  state->af9033_config[1].dyn0_clk = 1;

  if (state->chip_version == 0x02) {
   state->af9033_config[0].tuner = 135;
   state->af9033_config[1].tuner = 135;
  } else {
   state->af9033_config[0].tuner = 138;
   state->af9033_config[1].tuner = 138;
  }

  if (state->no_eeprom) {

   state->ir_mode = 0x05;
   state->ir_type = 0x00;

   goto skip_eeprom;
  }
 } else if (state->chip_type == 0x9306) {




  if ((le16_to_cpu(d->udev->descriptor.idVendor) == USB_VID_AVERMEDIA) &&
      (le16_to_cpu(d->udev->descriptor.idProduct) == USB_PID_AVERMEDIA_TD310)) {
   state->it930x_addresses = 1;
  }
  return 0;
 }


 state->ir_mode = state->eeprom[EEPROM_IR_MODE];
 state->ir_type = state->eeprom[EEPROM_IR_TYPE];

 if (state->dual_mode) {

  tmp = state->eeprom[EEPROM_2ND_DEMOD_ADDR];
  if (tmp)
   state->af9033_i2c_addr[1] = tmp >> 1;

  dev_dbg(&intf->dev, "2nd demod I2C addr=%02x\n",
   state->af9033_i2c_addr[1]);
 }

 for (i = 0; i < state->dual_mode + 1; i++) {
  unsigned int eeprom_offset = 0;


  tmp = state->eeprom[EEPROM_1_TUNER_ID + eeprom_offset];
  dev_dbg(&intf->dev, "[%d]tuner=%02x\n", i, tmp);


  if (state->chip_type == 0x9135) {
   if (state->chip_version == 0x02) {

    switch (tmp) {
    case 135:
    case 134:
    case 133:
     state->af9033_config[i].tuner = tmp;
     break;
    }
   } else {

    switch (tmp) {
    case 138:
    case 137:
    case 136:
     state->af9033_config[i].tuner = tmp;
     break;
    }
   }
  } else {

   state->af9033_config[i].tuner = tmp;
  }

  if (state->af9033_config[i].tuner != tmp) {
   dev_info(&intf->dev, "[%d] overriding tuner from %02x to %02x\n",
     i, tmp, state->af9033_config[i].tuner);
  }

  switch (state->af9033_config[i].tuner) {
  case 130:
  case 141:
  case 132:
  case 131:
  case 139:
  case 140:
   state->af9033_config[i].spec_inv = 1;
   break;
  case 138:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
   break;
  default:
   dev_warn(&intf->dev, "tuner id=%02x not supported, please report!",
     tmp);
  }


  if (i == 1)
   switch (state->af9033_config[i].tuner) {
   case 140:
   case 138:
   case 137:
   case 136:
   case 135:
   case 134:
   case 133:
   case 132:
    break;
   default:
    state->dual_mode = 0;
    dev_info(&intf->dev, "driver does not support 2nd tuner and will disable it");
  }


  tmp = state->eeprom[EEPROM_1_IF_L + eeprom_offset];
  tmp16 = tmp << 0;
  tmp = state->eeprom[EEPROM_1_IF_H + eeprom_offset];
  tmp16 |= tmp << 8;
  dev_dbg(&intf->dev, "[%d]IF=%d\n", i, tmp16);

  eeprom_offset += 0x10;
 }

skip_eeprom:

 ret = af9035_rd_reg(d, 0x00d800, &tmp);
 if (ret < 0)
  goto err;

 tmp = (tmp >> 0) & 0x0f;

 for (i = 0; i < ARRAY_SIZE(state->af9033_config); i++) {
  if (state->chip_type == 0x9135)
   state->af9033_config[i].clock = clock_lut_it9135[tmp];
  else
   state->af9033_config[i].clock = clock_lut_af9035[tmp];
 }

 state->no_read = 0;

 if (state->af9033_config[0].tuner == 132 &&
  le16_to_cpu(d->udev->descriptor.idVendor) == USB_VID_AVERMEDIA)

  switch (le16_to_cpu(d->udev->descriptor.idProduct)) {
  case 129:
  case 128:
   dev_info(&intf->dev,
     "Device may have issues with I2C read operations. Enabling fix.\n");
   state->no_read = 1;
   break;
  }

 return 0;

err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);

 return ret;
}
