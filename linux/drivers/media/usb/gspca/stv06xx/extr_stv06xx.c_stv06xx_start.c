
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_3__* endpoint; } ;
struct TYPE_5__ {int alt; int iface; int dev; } ;
struct sd {TYPE_4__* sensor; TYPE_1__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_8__ {int (* start ) (struct sd*) ;} ;
struct TYPE_6__ {int wMaxPacketSize; } ;
struct TYPE_7__ {TYPE_2__ desc; } ;


 int D_STREAM ;
 int EIO ;
 int STV_ISO_ENABLE ;
 int STV_ISO_SIZE_L ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int gspca_err (struct gspca_dev*,char*) ;
 int le16_to_cpu (int ) ;
 int stub1 (struct sd*) ;
 int stv06xx_write_bridge (struct sd*,int ,int) ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int ) ;
 struct usb_interface* usb_ifnum_to_if (int ,int ) ;

__attribute__((used)) static int stv06xx_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct usb_host_interface *alt;
 struct usb_interface *intf;
 int err, packet_size;

 intf = usb_ifnum_to_if(sd->gspca_dev.dev, sd->gspca_dev.iface);
 alt = usb_altnum_to_altsetting(intf, sd->gspca_dev.alt);
 if (!alt) {
  gspca_err(gspca_dev, "Couldn't get altsetting\n");
  return -EIO;
 }

 packet_size = le16_to_cpu(alt->endpoint[0].desc.wMaxPacketSize);
 err = stv06xx_write_bridge(sd, STV_ISO_SIZE_L, packet_size);
 if (err < 0)
  return err;


 err = sd->sensor->start(sd);
 if (err < 0)
  goto out;


 err = stv06xx_write_bridge(sd, STV_ISO_ENABLE, 1);

out:
 if (err < 0)
  gspca_dbg(gspca_dev, D_STREAM, "Starting stream failed\n");
 else
  gspca_dbg(gspca_dev, D_STREAM, "Started streaming\n");

 return (err < 0) ? err : 0;
}
