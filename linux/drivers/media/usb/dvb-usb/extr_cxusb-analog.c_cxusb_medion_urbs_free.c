
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxusb_medion_dev {TYPE_1__** streamurbs; } ;
struct TYPE_2__ {int transfer_buffer; } ;


 unsigned int CXUSB_VIDEO_URBS ;
 int kfree (int ) ;
 int usb_free_urb (TYPE_1__*) ;

__attribute__((used)) static void cxusb_medion_urbs_free(struct cxusb_medion_dev *cxdev)
{
 unsigned int i;

 for (i = 0; i < CXUSB_VIDEO_URBS; i++)
  if (cxdev->streamurbs[i]) {
   kfree(cxdev->streamurbs[i]->transfer_buffer);
   usb_free_urb(cxdev->streamurbs[i]);
   cxdev->streamurbs[i] = ((void*)0);
  }
}
