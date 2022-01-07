
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {struct af9005_device_state* priv; } ;
struct af9005_device_state {int led_state; } ;


 int af9005_write_register_bits (struct dvb_usb_device*,int ,int ,int ,int) ;
 scalar_t__ dvb_usb_af9005_led ;
 int reg_top_lock1_len ;
 int reg_top_lock1_pos ;
 int reg_top_locken1_len ;
 int reg_top_locken1_pos ;
 int xd_p_reg_top_lock1 ;
 int xd_p_reg_top_locken1 ;

int af9005_led_control(struct dvb_usb_device *d, int onoff)
{
 struct af9005_device_state *st = d->priv;
 int temp, ret;

 if (onoff && dvb_usb_af9005_led)
  temp = 1;
 else
  temp = 0;
 if (st->led_state != temp) {
  ret =
      af9005_write_register_bits(d, xd_p_reg_top_locken1,
            reg_top_locken1_pos,
            reg_top_locken1_len, temp);
  if (ret)
   return ret;
  ret =
      af9005_write_register_bits(d, xd_p_reg_top_lock1,
            reg_top_lock1_pos,
            reg_top_lock1_len, temp);
  if (ret)
   return ret;
  st->led_state = temp;
 }
 return 0;
}
