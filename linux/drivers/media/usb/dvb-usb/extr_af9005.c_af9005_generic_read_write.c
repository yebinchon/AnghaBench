
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int data_mutex; struct af9005_device_state* priv; } ;
struct af9005_device_state {int* data; int sequence; } ;


 int AF9005_CMD_AUTOINC ;
 int AF9005_CMD_BURST ;
 int AF9005_CMD_OFDM_REG ;
 int AF9005_CMD_READ ;
 int AF9005_CMD_TUNER ;
 int AF9005_CMD_WRITE ;
 int AF9005_OFDM_REG ;
 int AF9005_REGISTER_RW ;
 int AF9005_REGISTER_RW_ACK ;
 int AF9005_TUNER_REG ;
 int EINVAL ;
 int EIO ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int err (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int af9005_generic_read_write(struct dvb_usb_device *d, u16 reg,
         int readwrite, int type, u8 * values, int len)
{
 struct af9005_device_state *st = d->priv;
 u8 command, seq;
 int i, ret;

 if (len < 1) {
  err("generic read/write, less than 1 byte. Makes no sense.");
  return -EINVAL;
 }
 if (len > 8) {
  err("generic read/write, more than 8 bytes. Not supported.");
  return -EINVAL;
 }

 mutex_lock(&d->data_mutex);
 st->data[0] = 14;
 st->data[1] = 0;

 st->data[2] = AF9005_REGISTER_RW;
 st->data[3] = 12;

 st->data[4] = seq = st->sequence++;

 st->data[5] = (u8) (reg >> 8);
 st->data[6] = (u8) (reg & 0xff);

 if (type == AF9005_OFDM_REG) {
  command = AF9005_CMD_OFDM_REG;
 } else {
  command = AF9005_CMD_TUNER;
 }

 if (len > 1)
  command |=
      AF9005_CMD_BURST | AF9005_CMD_AUTOINC | (len - 1) << 3;
 command |= readwrite;
 if (readwrite == AF9005_CMD_WRITE)
  for (i = 0; i < len; i++)
   st->data[8 + i] = values[i];
 else if (type == AF9005_TUNER_REG)

  st->data[8] = values[0];
 st->data[7] = command;

 ret = dvb_usb_generic_rw(d, st->data, 16, st->data, 17, 0);
 if (ret)
  goto ret;


 if (st->data[2] != AF9005_REGISTER_RW_ACK) {
  err("generic read/write, wrong reply code.");
  ret = -EIO;
  goto ret;
 }
 if (st->data[3] != 0x0d) {
  err("generic read/write, wrong length in reply.");
  ret = -EIO;
  goto ret;
 }
 if (st->data[4] != seq) {
  err("generic read/write, wrong sequence in reply.");
  ret = -EIO;
  goto ret;
 }







 if (st->data[16] != 0x01) {
  err("generic read/write wrong status code in reply.");
  ret = -EIO;
  goto ret;
 }

 if (readwrite == AF9005_CMD_READ)
  for (i = 0; i < len; i++)
   values[i] = st->data[8 + i];

ret:
 mutex_unlock(&d->data_mutex);
 return ret;

}
