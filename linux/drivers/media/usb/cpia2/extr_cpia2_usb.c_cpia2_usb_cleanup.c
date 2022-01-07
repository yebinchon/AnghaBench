
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int cpia2_driver ;
 int schedule_timeout (int) ;
 int usb_deregister (int *) ;

void cpia2_usb_cleanup(void)
{
 schedule_timeout(2 * HZ);
 usb_deregister(&cpia2_driver);
}
