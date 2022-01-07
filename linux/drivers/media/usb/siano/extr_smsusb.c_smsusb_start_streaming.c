
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsusb_device_t {int * surbs; } ;


 int MAX_URBS ;
 int pr_err (char*) ;
 int smsusb_stop_streaming (struct smsusb_device_t*) ;
 int smsusb_submit_urb (struct smsusb_device_t*,int *) ;

__attribute__((used)) static int smsusb_start_streaming(struct smsusb_device_t *dev)
{
 int i, rc;

 for (i = 0; i < MAX_URBS; i++) {
  rc = smsusb_submit_urb(dev, &dev->surbs[i]);
  if (rc < 0) {
   pr_err("smsusb_submit_urb(...) failed\n");
   smsusb_stop_streaming(dev);
   break;
  }
 }

 return rc;
}
