
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dev; } ;
struct req_t {int cmd; int i2c_addr; int addr; int mbox; int addr_len; int data_len; int* data; } ;
struct dvb_usb_device {int usb_mutex; struct usb_interface* intf; } ;
struct af9015_state {int* buf; int seq; } ;


 size_t ACK_HDR_LEN ;

 int BUF_LEN ;


 int EINVAL ;
 int EIO ;



 int READ_WRITE_I2C ;

 size_t REQ_HDR_LEN ;



 struct af9015_state* d_to_priv (struct dvb_usb_device*) ;
 int dev_err (int *,char*,int,...) ;
 int dvb_usbv2_generic_rw_locked (struct dvb_usb_device*,int*,int,int*,int) ;
 int memcpy (int*,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int af9015_ctrl_msg(struct dvb_usb_device *d, struct req_t *req)
{


 struct af9015_state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 int ret, wlen, rlen;
 u8 write = 1;

 mutex_lock(&d->usb_mutex);

 state->buf[0] = req->cmd;
 state->buf[1] = state->seq++;
 state->buf[2] = req->i2c_addr << 1;
 state->buf[3] = req->addr >> 8;
 state->buf[4] = req->addr & 0xff;
 state->buf[5] = req->mbox;
 state->buf[6] = req->addr_len;
 state->buf[7] = req->data_len;

 switch (req->cmd) {
 case 134:
 case 132:
 case 131:
  write = 0;
  break;
 case 133:
  write = 0;
  state->buf[2] |= 0x01;

 case 130:
  state->buf[0] = READ_WRITE_I2C;
  break;
 case 129:
  if (((req->addr & 0xff00) == 0xff00) ||
      ((req->addr & 0xff00) == 0xae00))
   state->buf[0] = 128;
 case 128:
 case 136:
 case 135:
 case 137:
  break;
 default:
  dev_err(&intf->dev, "unknown cmd %d\n", req->cmd);
  ret = -EIO;
  goto error;
 }


 if ((write && (req->data_len > BUF_LEN - 8)) ||
     (!write && (req->data_len > BUF_LEN - 2))) {
  dev_err(&intf->dev, "too much data, cmd %u, len %u\n",
   req->cmd, req->data_len);
  ret = -EINVAL;
  goto error;
 }





 wlen = 8;
 rlen = 2;
 if (write) {
  wlen += req->data_len;
  memcpy(&state->buf[8], req->data, req->data_len);
 } else {
  rlen += req->data_len;
 }


 if (req->cmd == 135 || req->cmd == 131)
  rlen = 0;

 ret = dvb_usbv2_generic_rw_locked(d, state->buf, wlen,
       state->buf, rlen);
 if (ret)
  goto error;


 if (rlen && state->buf[1]) {
  dev_err(&intf->dev, "cmd failed %u\n", state->buf[1]);
  ret = -EIO;
  goto error;
 }


 if (!write)
  memcpy(req->data, &state->buf[2], req->data_len);
error:
 mutex_unlock(&d->usb_mutex);

 return ret;
}
