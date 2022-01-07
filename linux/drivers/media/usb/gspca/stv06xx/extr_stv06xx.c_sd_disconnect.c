
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct sd {int * sensor; void* sensor_priv; } ;
struct gspca_dev {int dummy; } ;


 int D_PROBE ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int gspca_disconnect (struct usb_interface*) ;
 int kfree (void*) ;
 struct gspca_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void sd_disconnect(struct usb_interface *intf)
{
 struct gspca_dev *gspca_dev = usb_get_intfdata(intf);
 struct sd *sd = (struct sd *) gspca_dev;
 void *priv = sd->sensor_priv;
 gspca_dbg(gspca_dev, D_PROBE, "Disconnecting the stv06xx device\n");

 sd->sensor = ((void*)0);
 gspca_disconnect(intf);
 kfree(priv);
}
