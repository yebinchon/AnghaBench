
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_req {int wlen; int * wbuf; int * member_5; int member_4; int * member_3; int member_2; int member_1; int member_0; } ;
struct usb_interface {int dev; } ;
struct firmware {int size; int* data; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;


 int CMD_FW_SCATTER_WR ;
 int HDR_SIZE ;
 int af9035_ctrl_msg (struct dvb_usb_device*,struct usb_req*) ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int af9035_download_firmware_new(struct dvb_usb_device *d,
  const struct firmware *fw)
{
 struct usb_interface *intf = d->intf;
 int ret, i, i_prev;
 struct usb_req req_fw_dl = { CMD_FW_SCATTER_WR, 0, 0, ((void*)0), 0, ((void*)0) };
 for (i = 7, i_prev = 0; i <= fw->size; i++) {
  if (i == fw->size ||
    (fw->data[i + 0] == 0x03 &&
    (fw->data[i + 1] == 0x00 ||
    fw->data[i + 1] == 0x01) &&
    fw->data[i + 2] == 0x00)) {
   req_fw_dl.wlen = i - i_prev;
   req_fw_dl.wbuf = (u8 *) &fw->data[i_prev];
   i_prev = i;
   ret = af9035_ctrl_msg(d, &req_fw_dl);
   if (ret < 0)
    goto err;

   dev_dbg(&intf->dev, "data uploaded=%d\n", i);
  }
 }

 return 0;

err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);

 return ret;
}
