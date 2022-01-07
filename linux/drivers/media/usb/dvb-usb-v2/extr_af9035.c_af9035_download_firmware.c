
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_req {int member_2; int* member_3; int member_4; int* member_5; int cmd; int member_1; int member_0; } ;
struct usb_interface {int dev; } ;
struct state {int* eeprom; int chip_type; scalar_t__ dual_mode; } ;
struct firmware {int* data; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;


 int CMD_FW_BOOT ;
 int CMD_FW_QUERYINFO ;
 size_t EEPROM_2ND_DEMOD_ADDR ;
 int ENODEV ;
 int af9035_ctrl_msg (struct dvb_usb_device*,struct usb_req*) ;
 int af9035_download_firmware_new (struct dvb_usb_device*,struct firmware const*) ;
 int af9035_download_firmware_old (struct dvb_usb_device*,struct firmware const*) ;
 int af9035_wr_reg (struct dvb_usb_device*,int,int) ;
 int af9035_wr_reg_mask (struct dvb_usb_device*,int,int,int) ;
 struct state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,int,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int af9035_download_firmware(struct dvb_usb_device *d,
  const struct firmware *fw)
{
 struct usb_interface *intf = d->intf;
 struct state *state = d_to_priv(d);
 int ret;
 u8 wbuf[1];
 u8 rbuf[4];
 u8 tmp;
 struct usb_req req = { 0, 0, 0, ((void*)0), 0, ((void*)0) };
 struct usb_req req_fw_ver = { CMD_FW_QUERYINFO, 0, 1, wbuf, 4, rbuf };

 dev_dbg(&intf->dev, "\n");







 if (state->dual_mode) {

  ret = af9035_wr_reg_mask(d, 0x00d8b0, 0x01, 0x01);
  if (ret < 0)
   goto err;

  ret = af9035_wr_reg_mask(d, 0x00d8b1, 0x01, 0x01);
  if (ret < 0)
   goto err;

  ret = af9035_wr_reg_mask(d, 0x00d8af, 0x00, 0x01);
  if (ret < 0)
   goto err;

  usleep_range(10000, 50000);

  ret = af9035_wr_reg_mask(d, 0x00d8af, 0x01, 0x01);
  if (ret < 0)
   goto err;


  tmp = state->eeprom[EEPROM_2ND_DEMOD_ADDR];


  if (!tmp)
   tmp = 0x1d << 1;

  if ((state->chip_type == 0x9135) ||
    (state->chip_type == 0x9306)) {
   ret = af9035_wr_reg(d, 0x004bfb, tmp);
   if (ret < 0)
    goto err;
  } else {
   ret = af9035_wr_reg(d, 0x00417f, tmp);
   if (ret < 0)
    goto err;


   ret = af9035_wr_reg_mask(d, 0x00d81a, 0x01, 0x01);
   if (ret < 0)
    goto err;
  }
 }

 if (fw->data[0] == 0x01)
  ret = af9035_download_firmware_old(d, fw);
 else
  ret = af9035_download_firmware_new(d, fw);
 if (ret < 0)
  goto err;


 req.cmd = CMD_FW_BOOT;
 ret = af9035_ctrl_msg(d, &req);
 if (ret < 0)
  goto err;


 wbuf[0] = 1;
 ret = af9035_ctrl_msg(d, &req_fw_ver);
 if (ret < 0)
  goto err;

 if (!(rbuf[0] || rbuf[1] || rbuf[2] || rbuf[3])) {
  dev_err(&intf->dev, "firmware did not run\n");
  ret = -ENODEV;
  goto err;
 }

 dev_info(&intf->dev, "firmware version=%d.%d.%d.%d",
   rbuf[0], rbuf[1], rbuf[2], rbuf[3]);

 return 0;

err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);

 return ret;
}
