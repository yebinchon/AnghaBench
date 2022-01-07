
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si470x_device {int * usb_buf; int hardware_version; int software_version; TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int SCRATCH_REPORT ;
 int SCRATCH_REPORT_SIZE ;
 int dev_warn (int *,char*,int) ;
 int si470x_get_report (struct si470x_device*,int *,int ) ;

__attribute__((used)) static int si470x_get_scratch_page_versions(struct si470x_device *radio)
{
 int retval;

 radio->usb_buf[0] = SCRATCH_REPORT;

 retval = si470x_get_report(radio, radio->usb_buf, SCRATCH_REPORT_SIZE);

 if (retval < 0)
  dev_warn(&radio->intf->dev, "si470x_get_scratch: si470x_get_report returned %d\n",
    retval);
 else {
  radio->software_version = radio->usb_buf[1];
  radio->hardware_version = radio->usb_buf[2];
 }

 return (retval < 0) ? -EINVAL : 0;
}
