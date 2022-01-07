
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {unsigned int cur_alt; unsigned int old_alt; int iface; int dev; } ;


 int DBG (char*,unsigned int,unsigned int) ;
 unsigned int USBIF_CMDONLY ;
 int usb_set_interface (int ,int ,unsigned int) ;

__attribute__((used)) static int set_alternate(struct camera_data *cam, unsigned int alt)
{
 int ret = 0;

 if(alt == cam->cur_alt)
  return 0;

 if (cam->cur_alt != USBIF_CMDONLY) {
  DBG("Changing from alt %d to %d\n", cam->cur_alt, USBIF_CMDONLY);
  ret = usb_set_interface(cam->dev, cam->iface, USBIF_CMDONLY);
  if (ret != 0)
   return ret;
 }
 if (alt != USBIF_CMDONLY) {
  DBG("Changing from alt %d to %d\n", USBIF_CMDONLY, alt);
  ret = usb_set_interface(cam->dev, cam->iface, alt);
  if (ret != 0)
   return ret;
 }

 cam->old_alt = cam->cur_alt;
 cam->cur_alt = alt;

 return ret;
}
