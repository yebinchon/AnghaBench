
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct dvb_usb_device {int data_mutex; struct af9005_device_state* priv; } ;
struct af9005_device_state {int* data; int sequence; } ;


 int EIO ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int err (char*) ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int af9005_read_eeprom(struct dvb_usb_device *d, u8 address, u8 * values,
         int len)
{
 struct af9005_device_state *st = d->priv;
 u8 seq;
 int ret, i;

 mutex_lock(&d->data_mutex);

 memset(st->data, 0, sizeof(st->data));

 st->data[0] = 14;
 st->data[1] = 0;

 st->data[2] = 0x2a;

 st->data[3] = 12;

 st->data[4] = seq = st->sequence++;

 st->data[5] = 0;

 st->data[6] = len;
 st->data[7] = address;
 ret = dvb_usb_generic_rw(d, st->data, 16, st->data, 14, 0);
 if (st->data[2] != 0x2b) {
  err("Read eeprom, invalid reply code");
  ret = -EIO;
 } else if (st->data[3] != 10) {
  err("Read eeprom, invalid reply length");
  ret = -EIO;
 } else if (st->data[4] != seq) {
  err("Read eeprom, wrong sequence in reply ");
  ret = -EIO;
 } else if (st->data[5] != 1) {
  err("Read eeprom, wrong status in reply ");
  ret = -EIO;
 }

 if (!ret) {
  for (i = 0; i < len; i++)
   values[i] = st->data[6 + i];
 }
 mutex_unlock(&d->data_mutex);

 return ret;
}
