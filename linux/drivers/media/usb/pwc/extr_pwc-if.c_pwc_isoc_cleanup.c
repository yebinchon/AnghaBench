
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int udev; } ;


 int PWC_DEBUG_OPEN (char*) ;
 int pwc_iso_free (struct pwc_device*) ;
 int pwc_iso_stop (struct pwc_device*) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static void pwc_isoc_cleanup(struct pwc_device *pdev)
{
 PWC_DEBUG_OPEN(">> pwc_isoc_cleanup()\n");

 pwc_iso_stop(pdev);
 pwc_iso_free(pdev);
 usb_set_interface(pdev->udev, 0, 0);

 PWC_DEBUG_OPEN("<< pwc_isoc_cleanup()\n");
}
