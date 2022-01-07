
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int * usb_buf; int * registers; } ;


 int EINVAL ;
 int REGISTER_REPORT (int) ;
 int REGISTER_REPORT_SIZE ;
 int get_unaligned_be16 (int *) ;
 int si470x_get_report (struct si470x_device*,int *,int ) ;

__attribute__((used)) static int si470x_get_register(struct si470x_device *radio, int regnr)
{
 int retval;

 radio->usb_buf[0] = REGISTER_REPORT(regnr);

 retval = si470x_get_report(radio, radio->usb_buf, REGISTER_REPORT_SIZE);

 if (retval >= 0)
  radio->registers[regnr] = get_unaligned_be16(&radio->usb_buf[1]);

 return (retval < 0) ? -EINVAL : 0;
}
