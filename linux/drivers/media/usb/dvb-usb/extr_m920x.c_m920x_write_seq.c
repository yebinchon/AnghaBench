
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct m920x_inits {scalar_t__ address; int data; } ;


 int m920x_write (struct usb_device*,int ,int ,scalar_t__) ;

__attribute__((used)) static inline int m920x_write_seq(struct usb_device *udev, u8 request,
      struct m920x_inits *seq)
{
 int ret;
 do {
  ret = m920x_write(udev, request, seq->data, seq->address);
  if (ret != 0)
   return ret;

  seq++;
 } while (seq->address);

 return 0;
}
