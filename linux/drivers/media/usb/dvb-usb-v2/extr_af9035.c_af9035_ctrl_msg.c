
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_req {int wlen; int rlen; int mbox; int cmd; int* wbuf; int* rbuf; } ;
struct usb_interface {int dev; } ;
struct state {int* buf; int seq; } ;
struct dvb_usb_device {int usb_mutex; struct usb_interface* intf; } ;


 int ACK_HDR_LEN ;
 int BUF_LEN ;
 int CHECKSUM_LEN ;
 scalar_t__ CMD_FW_DL ;
 scalar_t__ CMD_IR_GET ;
 int EINVAL ;
 int EIO ;
 int REQ_HDR_LEN ;
 int af9035_checksum (int*,int) ;
 struct state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,scalar_t__,int) ;
 int dev_err (int *,char*,scalar_t__,int,...) ;
 int dvb_usbv2_generic_rw_locked (struct dvb_usb_device*,int*,int,int*,int) ;
 int memcpy (int*,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int af9035_ctrl_msg(struct dvb_usb_device *d, struct usb_req *req)
{




 struct state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 int ret, wlen, rlen;
 u16 checksum, tmp_checksum;

 mutex_lock(&d->usb_mutex);


 if (req->wlen > (BUF_LEN - 4 - 2) ||
   req->rlen > (BUF_LEN - 3 - 2)) {
  dev_err(&intf->dev, "too much data wlen=%d rlen=%d\n",
   req->wlen, req->rlen);
  ret = -EINVAL;
  goto exit;
 }

 state->buf[0] = 4 + req->wlen + 2 - 1;
 state->buf[1] = req->mbox;
 state->buf[2] = req->cmd;
 state->buf[3] = state->seq++;
 memcpy(&state->buf[4], req->wbuf, req->wlen);

 wlen = 4 + req->wlen + 2;
 rlen = 3 + req->rlen + 2;


 checksum = af9035_checksum(state->buf, state->buf[0] - 1);
 state->buf[state->buf[0] - 1] = (checksum >> 8);
 state->buf[state->buf[0] - 0] = (checksum & 0xff);


 if (req->cmd == CMD_FW_DL)
  rlen = 0;

 ret = dvb_usbv2_generic_rw_locked(d,
   state->buf, wlen, state->buf, rlen);
 if (ret)
  goto exit;


 if (req->cmd == CMD_FW_DL)
  goto exit;


 checksum = af9035_checksum(state->buf, rlen - 2);
 tmp_checksum = (state->buf[rlen - 2] << 8) | state->buf[rlen - 1];
 if (tmp_checksum != checksum) {
  dev_err(&intf->dev, "command=%02x checksum mismatch (%04x != %04x)\n",
   req->cmd, tmp_checksum, checksum);
  ret = -EIO;
  goto exit;
 }


 if (state->buf[2]) {

  if (req->cmd == CMD_IR_GET || state->buf[2] == 1) {
   ret = 1;
   goto exit;
  }

  dev_dbg(&intf->dev, "command=%02x failed fw error=%d\n",
   req->cmd, state->buf[2]);
  ret = -EIO;
  goto exit;
 }


 if (req->rlen)
  memcpy(req->rbuf, &state->buf[3], req->rlen);
exit:
 mutex_unlock(&d->usb_mutex);
 return ret;
}
