
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wbuf ;
typedef int u8 ;
struct usb_req {int member_2; int* member_3; int member_4; int* member_5; int member_1; int member_0; } ;
struct usb_interface {int dev; } ;
struct state {int chip_version; int chip_type; int prechip_version; int no_eeprom; int* eeprom; int dual_mode; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
typedef int rbuf ;


 char* AF9035_FIRMWARE_AF9035 ;
 char* AF9035_FIRMWARE_IT9135_V1 ;
 char* AF9035_FIRMWARE_IT9135_V2 ;
 char* AF9035_FIRMWARE_IT9303 ;
 int CMD_FW_QUERYINFO ;
 int COLD ;
 unsigned int EEPROM_BASE_AF9035 ;
 unsigned int EEPROM_BASE_IT9135 ;
 size_t EEPROM_TS_MODE ;
 int WARM ;
 int af9035_ctrl_msg (struct dvb_usb_device*,struct usb_req*) ;
 int af9035_rd_reg (struct dvb_usb_device*,unsigned int,int*) ;
 int af9035_rd_regs (struct dvb_usb_device*,unsigned int,int*,int) ;
 struct state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_info (int *,char*,int,...) ;

__attribute__((used)) static int af9035_identify_state(struct dvb_usb_device *d, const char **name)
{
 struct state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 int ret, i, ts_mode_invalid;
 unsigned int utmp, eeprom_addr;
 u8 tmp;
 u8 wbuf[1] = { 1 };
 u8 rbuf[4];
 struct usb_req req = { CMD_FW_QUERYINFO, 0, sizeof(wbuf), wbuf,
   sizeof(rbuf), rbuf };

 ret = af9035_rd_regs(d, 0x1222, rbuf, 3);
 if (ret < 0)
  goto err;

 state->chip_version = rbuf[0];
 state->chip_type = rbuf[2] << 8 | rbuf[1] << 0;

 ret = af9035_rd_reg(d, 0x384f, &state->prechip_version);
 if (ret < 0)
  goto err;

 dev_info(&intf->dev, "prechip_version=%02x chip_version=%02x chip_type=%04x\n",
   state->prechip_version, state->chip_version, state->chip_type);

 if (state->chip_type == 0x9135) {
  if (state->chip_version == 0x02) {
   *name = AF9035_FIRMWARE_IT9135_V2;
   utmp = 0x00461d;
  } else {
   *name = AF9035_FIRMWARE_IT9135_V1;
   utmp = 0x00461b;
  }


  ret = af9035_rd_reg(d, utmp, &tmp);
  if (ret < 0)
   goto err;

  if (tmp == 0x00) {
   dev_dbg(&intf->dev, "no eeprom\n");
   state->no_eeprom = 1;
   goto check_firmware_status;
  }

  eeprom_addr = EEPROM_BASE_IT9135;
 } else if (state->chip_type == 0x9306) {
  *name = AF9035_FIRMWARE_IT9303;
  state->no_eeprom = 1;
  goto check_firmware_status;
 } else {
  *name = AF9035_FIRMWARE_AF9035;
  eeprom_addr = EEPROM_BASE_AF9035;
 }


 for (i = 0; i < 256; i += 32) {
  ret = af9035_rd_regs(d, eeprom_addr + i, &state->eeprom[i], 32);
  if (ret < 0)
   goto err;
 }

 dev_dbg(&intf->dev, "eeprom dump:\n");
 for (i = 0; i < 256; i += 16)
  dev_dbg(&intf->dev, "%*ph\n", 16, &state->eeprom[i]);


 tmp = state->eeprom[EEPROM_TS_MODE];
 ts_mode_invalid = 0;
 switch (tmp) {
 case 0:
  break;
 case 1:
 case 3:
  state->dual_mode = 1;
  break;
 case 5:
  if (state->chip_type != 0x9135 && state->chip_type != 0x9306)
   state->dual_mode = 1;
  else
   ts_mode_invalid = 1;
  break;
 default:
  ts_mode_invalid = 1;
 }

 dev_dbg(&intf->dev, "ts mode=%d dual mode=%d\n", tmp, state->dual_mode);

 if (ts_mode_invalid)
  dev_info(&intf->dev, "ts mode=%d not supported, defaulting to single tuner mode!", tmp);

check_firmware_status:
 ret = af9035_ctrl_msg(d, &req);
 if (ret < 0)
  goto err;

 dev_dbg(&intf->dev, "reply=%*ph\n", 4, rbuf);
 if (rbuf[0] || rbuf[1] || rbuf[2] || rbuf[3])
  ret = WARM;
 else
  ret = COLD;

 return ret;

err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);

 return ret;
}
