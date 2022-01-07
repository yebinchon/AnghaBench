
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {scalar_t__* urbs; } ;


 int MAX_ISO_BUFS ;
 int PWC_DEBUG_MEMORY (char*,scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static void pwc_iso_stop(struct pwc_device *pdev)
{
 int i;


 for (i = 0; i < MAX_ISO_BUFS; i++) {
  if (pdev->urbs[i]) {
   PWC_DEBUG_MEMORY("Unlinking URB %p\n", pdev->urbs[i]);
   usb_kill_urb(pdev->urbs[i]);
  }
 }
}
