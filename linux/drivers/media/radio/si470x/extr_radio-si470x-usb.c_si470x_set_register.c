
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int * usb_buf; int * registers; } ;


 int EINVAL ;
 int REGISTER_REPORT (int) ;
 int REGISTER_REPORT_SIZE ;
 int put_unaligned_be16 (int ,int *) ;
 int si470x_set_report (struct si470x_device*,int *,int ) ;

__attribute__((used)) static int si470x_set_register(struct si470x_device *radio, int regnr)
{
 int retval;

 radio->usb_buf[0] = REGISTER_REPORT(regnr);
 put_unaligned_be16(radio->registers[regnr], &radio->usb_buf[1]);

 retval = si470x_set_report(radio, radio->usb_buf, REGISTER_REPORT_SIZE);

 return (retval < 0) ? -EINVAL : 0;
}
