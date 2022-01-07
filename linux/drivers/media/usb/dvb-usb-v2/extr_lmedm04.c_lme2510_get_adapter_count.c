
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;



__attribute__((used)) static int lme2510_get_adapter_count(struct dvb_usb_device *d)
{
 return 1;
}
