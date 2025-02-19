
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int DIBUSB_REQ_I2C_READ ;
 int DIBUSB_REQ_I2C_WRITE ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int MAX_XFER_SIZE ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int*,int) ;
 int warn (char*,int) ;

__attribute__((used)) static int dibusb_i2c_msg(struct dvb_usb_device *d, u8 addr,
     u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 u8 *sndbuf;
 int ret, wo, len;


 wo = (rbuf == ((void*)0) || rlen == 0);

 len = 2 + wlen + (wo ? 0 : 2);

 sndbuf = kmalloc(MAX_XFER_SIZE, GFP_KERNEL);
 if (!sndbuf)
  return -ENOMEM;

 if (4 + wlen > MAX_XFER_SIZE) {
  warn("i2c wr: len=%d is too big!\n", wlen);
  ret = -EOPNOTSUPP;
  goto ret;
 }

 sndbuf[0] = wo ? DIBUSB_REQ_I2C_WRITE : DIBUSB_REQ_I2C_READ;
 sndbuf[1] = (addr << 1) | (wo ? 0 : 1);

 memcpy(&sndbuf[2], wbuf, wlen);

 if (!wo) {
  sndbuf[wlen + 2] = (rlen >> 8) & 0xff;
  sndbuf[wlen + 3] = rlen & 0xff;
 }

 ret = dvb_usb_generic_rw(d, sndbuf, len, rbuf, rlen, 0);

ret:
 kfree(sndbuf);
 return ret;
}
