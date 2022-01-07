
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int * usb_buf; int * registers; } ;


 int EINVAL ;
 int ENTIRE_REPORT ;
 int ENTIRE_REPORT_SIZE ;
 unsigned char RADIO_REGISTER_NUM ;
 unsigned char RADIO_REGISTER_SIZE ;
 int get_unaligned_be16 (int *) ;
 int si470x_get_report (struct si470x_device*,int *,int ) ;

__attribute__((used)) static int si470x_get_all_registers(struct si470x_device *radio)
{
 int retval;
 unsigned char regnr;

 radio->usb_buf[0] = ENTIRE_REPORT;

 retval = si470x_get_report(radio, radio->usb_buf, ENTIRE_REPORT_SIZE);

 if (retval >= 0)
  for (regnr = 0; regnr < RADIO_REGISTER_NUM; regnr++)
   radio->registers[regnr] = get_unaligned_be16(
    &radio->usb_buf[regnr * RADIO_REGISTER_SIZE + 1]);

 return (retval < 0) ? -EINVAL : 0;
}
