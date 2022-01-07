
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_req {int* member_3; int wlen; int* wbuf; int cmd; int * member_5; int member_4; int member_2; int member_1; int member_0; } ;
struct usb_interface {int dev; } ;
struct firmware {int size; int* data; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;


 int CMD_FW_DL ;
 int CMD_FW_DL_BEGIN ;
 int CMD_FW_DL_END ;
 int HDR_SIZE ;
 int MAX_DATA ;
 int af9035_ctrl_msg (struct dvb_usb_device*,struct usb_req*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static int af9035_download_firmware_old(struct dvb_usb_device *d,
  const struct firmware *fw)
{
 struct usb_interface *intf = d->intf;
 int ret, i, j, len;
 u8 wbuf[1];
 struct usb_req req = { 0, 0, 0, ((void*)0), 0, ((void*)0) };
 struct usb_req req_fw_dl = { CMD_FW_DL, 0, 0, wbuf, 0, ((void*)0) };
 u8 hdr_core;
 u16 hdr_addr, hdr_data_len, hdr_checksum;
 for (i = fw->size; i > 7;) {
  hdr_core = fw->data[fw->size - i + 0];
  hdr_addr = fw->data[fw->size - i + 1] << 8;
  hdr_addr |= fw->data[fw->size - i + 2] << 0;
  hdr_data_len = fw->data[fw->size - i + 3] << 8;
  hdr_data_len |= fw->data[fw->size - i + 4] << 0;
  hdr_checksum = fw->data[fw->size - i + 5] << 8;
  hdr_checksum |= fw->data[fw->size - i + 6] << 0;

  dev_dbg(&intf->dev, "core=%d addr=%04x data_len=%d checksum=%04x\n",
   hdr_core, hdr_addr, hdr_data_len, hdr_checksum);

  if (((hdr_core != 1) && (hdr_core != 2)) ||
    (hdr_data_len > i)) {
   dev_dbg(&intf->dev, "bad firmware\n");
   break;
  }


  req.cmd = CMD_FW_DL_BEGIN;
  ret = af9035_ctrl_msg(d, &req);
  if (ret < 0)
   goto err;


  for (j = 7 + hdr_data_len; j > 0; j -= 58) {
   len = j;
   if (len > 58)
    len = 58;
   req_fw_dl.wlen = len;
   req_fw_dl.wbuf = (u8 *) &fw->data[fw->size - i +
     7 + hdr_data_len - j];
   ret = af9035_ctrl_msg(d, &req_fw_dl);
   if (ret < 0)
    goto err;
  }


  req.cmd = CMD_FW_DL_END;
  ret = af9035_ctrl_msg(d, &req);
  if (ret < 0)
   goto err;

  i -= hdr_data_len + 7;

  dev_dbg(&intf->dev, "data uploaded=%zu\n", fw->size - i);
 }


 if (i)
  dev_warn(&intf->dev, "bad firmware\n");

 return 0;

err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);

 return ret;
}
