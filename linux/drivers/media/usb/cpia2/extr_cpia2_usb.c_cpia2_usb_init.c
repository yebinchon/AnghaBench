
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpia2_driver ;
 int usb_register (int *) ;

int cpia2_usb_init(void)
{
 return usb_register(&cpia2_driver);
}
