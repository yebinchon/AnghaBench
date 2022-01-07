
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct gs_usb {int rx_submitted; scalar_t__* canch; } ;


 unsigned int GS_MAX_INTF ;
 int dev_err (int *,char*) ;
 int gs_destroy_candev (scalar_t__) ;
 int kfree (struct gs_usb*) ;
 struct gs_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void gs_usb_disconnect(struct usb_interface *intf)
{
 unsigned i;
 struct gs_usb *dev = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));

 if (!dev) {
  dev_err(&intf->dev, "Disconnect (nodata)\n");
  return;
 }

 for (i = 0; i < GS_MAX_INTF; i++)
  if (dev->canch[i])
   gs_destroy_candev(dev->canch[i]);

 usb_kill_anchored_urbs(&dev->rx_submitted);
 kfree(dev);
}
