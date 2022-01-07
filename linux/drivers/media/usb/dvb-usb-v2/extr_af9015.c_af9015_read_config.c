
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {int dev; } ;
struct req_t {int member_4; int member_5; int* member_6; int addr; int member_3; int member_2; int member_1; int member_0; } ;
struct dvb_usb_device {TYPE_2__* udev; struct usb_interface* intf; } ;
struct af9015_state {int ir_mode; int dual_mode; int* af9013_i2c_addr; int* mt2060_if1; TYPE_3__* af9013_pdata; } ;
struct TYPE_6__ {int clk; int if_frequency; int spec_inv; int tuner; int * gpio; } ;
struct TYPE_4__ {int idProduct; int idVendor; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 int AF9013_GPIO_LO ;
 int AF9015_EEPROM_DEMOD2_I2C ;
 int AF9015_EEPROM_IF1H ;
 int AF9015_EEPROM_IF1L ;
 int AF9015_EEPROM_IR_MODE ;
 int AF9015_EEPROM_MT2060_IF1H ;
 int AF9015_EEPROM_MT2060_IF1L ;
 int AF9015_EEPROM_OFFSET ;
 int AF9015_EEPROM_TS_MODE ;
 int AF9015_EEPROM_TUNER_ID1 ;
 int AF9015_EEPROM_XTAL_TYPE1 ;
 int AF9015_I2C_DEMOD ;
 int AF9015_I2C_EEPROM ;
 int ENODEV ;
 int READ_I2C ;
 scalar_t__ USB_PID_AVERMEDIA_A850 ;
 scalar_t__ USB_PID_AVERMEDIA_A850T ;
 scalar_t__ USB_VID_AVERMEDIA ;
 int af9015_ctrl_msg (struct dvb_usb_device*,struct req_t*) ;
 int af9015_eeprom_hash (struct dvb_usb_device*) ;
 struct af9015_state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int af9015_read_config(struct dvb_usb_device *d)
{
 struct af9015_state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 int ret;
 u8 val, i, offset = 0;
 struct req_t req = {READ_I2C, AF9015_I2C_EEPROM, 0, 0, 1, 1, &val};

 dev_dbg(&intf->dev, "\n");


 req.addr = AF9015_EEPROM_IR_MODE;

 for (i = 0; i < 4; i++) {
  ret = af9015_ctrl_msg(d, &req);
  if (!ret)
   break;
 }
 if (ret)
  goto error;

 ret = af9015_eeprom_hash(d);
 if (ret)
  goto error;

 state->ir_mode = val;
 dev_dbg(&intf->dev, "ir mode %02x\n", val);


 req.addr = AF9015_EEPROM_TS_MODE;
 ret = af9015_ctrl_msg(d, &req);
 if (ret)
  goto error;

 state->dual_mode = val;
 dev_dbg(&intf->dev, "ts mode %02x\n", state->dual_mode);

 state->af9013_i2c_addr[0] = AF9015_I2C_DEMOD;

 if (state->dual_mode) {

  req.addr = AF9015_EEPROM_DEMOD2_I2C;
  ret = af9015_ctrl_msg(d, &req);
  if (ret)
   goto error;

  state->af9013_i2c_addr[1] = val >> 1;
 }

 for (i = 0; i < state->dual_mode + 1; i++) {
  if (i == 1)
   offset = AF9015_EEPROM_OFFSET;

  req.addr = AF9015_EEPROM_XTAL_TYPE1 + offset;
  ret = af9015_ctrl_msg(d, &req);
  if (ret)
   goto error;
  switch (val) {
  case 0:
   state->af9013_pdata[i].clk = 28800000;
   break;
  case 1:
   state->af9013_pdata[i].clk = 20480000;
   break;
  case 2:
   state->af9013_pdata[i].clk = 28000000;
   break;
  case 3:
   state->af9013_pdata[i].clk = 25000000;
   break;
  }
  dev_dbg(&intf->dev, "[%d] xtal %02x, clk %u\n",
   i, val, state->af9013_pdata[i].clk);


  req.addr = AF9015_EEPROM_IF1H + offset;
  ret = af9015_ctrl_msg(d, &req);
  if (ret)
   goto error;

  state->af9013_pdata[i].if_frequency = val << 8;

  req.addr = AF9015_EEPROM_IF1L + offset;
  ret = af9015_ctrl_msg(d, &req);
  if (ret)
   goto error;

  state->af9013_pdata[i].if_frequency += val;
  state->af9013_pdata[i].if_frequency *= 1000;
  dev_dbg(&intf->dev, "[%d] if frequency %u\n",
   i, state->af9013_pdata[i].if_frequency);


  req.addr = AF9015_EEPROM_MT2060_IF1H + offset;
  ret = af9015_ctrl_msg(d, &req);
  if (ret)
   goto error;
  state->mt2060_if1[i] = val << 8;
  req.addr = AF9015_EEPROM_MT2060_IF1L + offset;
  ret = af9015_ctrl_msg(d, &req);
  if (ret)
   goto error;
  state->mt2060_if1[i] += val;
  dev_dbg(&intf->dev, "[%d] MT2060 IF1 %u\n",
   i, state->mt2060_if1[i]);


  req.addr = AF9015_EEPROM_TUNER_ID1 + offset;
  ret = af9015_ctrl_msg(d, &req);
  if (ret)
   goto error;
  switch (val) {
  case 140:
  case 138:
  case 132:
  case 128:
  case 137:
  case 129:
  case 131:
  case 130:
   state->af9013_pdata[i].spec_inv = 1;
   break;
  case 136:
  case 135:
  case 134:
  case 133:
   state->af9013_pdata[i].spec_inv = 0;
   break;
  case 139:
   state->af9013_pdata[i].gpio[1] = AF9013_GPIO_LO;
   state->af9013_pdata[i].spec_inv = 1;
   break;
  default:
   dev_err(&intf->dev,
    "tuner id %02x not supported, please report!\n",
    val);
   return -ENODEV;
  }

  state->af9013_pdata[i].tuner = val;
  dev_dbg(&intf->dev, "[%d] tuner id %02x\n", i, val);
 }

error:
 if (ret)
  dev_err(&intf->dev, "eeprom read failed %d\n", ret);






 if (le16_to_cpu(d->udev->descriptor.idVendor) == USB_VID_AVERMEDIA &&
     ((le16_to_cpu(d->udev->descriptor.idProduct) == USB_PID_AVERMEDIA_A850) ||
     (le16_to_cpu(d->udev->descriptor.idProduct) == USB_PID_AVERMEDIA_A850T))) {
  dev_dbg(&intf->dev, "AverMedia A850: overriding config\n");

  state->dual_mode = 0;


  state->af9013_pdata[0].if_frequency = 4570000;
 }

 return ret;
}
