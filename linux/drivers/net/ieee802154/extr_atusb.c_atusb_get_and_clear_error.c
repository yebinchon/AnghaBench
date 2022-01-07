
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atusb {int err; } ;



__attribute__((used)) static int atusb_get_and_clear_error(struct atusb *atusb)
{
 int err = atusb->err;

 atusb->err = 0;
 return err;
}
