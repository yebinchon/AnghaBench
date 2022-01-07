
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_capability {scalar_t__ bus_info; scalar_t__ card; scalar_t__ driver; } ;
struct gspca_dev {TYPE_3__* dev; TYPE_1__* sd_desc; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int idProduct; int idVendor; } ;
struct TYPE_6__ {TYPE_2__ descriptor; int * product; } ;
struct TYPE_4__ {int * name; } ;


 int le16_to_cpu (int ) ;
 int snprintf (char*,int,char*,int,int) ;
 int strscpy (char*,int *,int) ;
 int usb_make_path (TYPE_3__*,char*,int) ;
 struct gspca_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct gspca_dev *gspca_dev = video_drvdata(file);

 strscpy((char *)cap->driver, gspca_dev->sd_desc->name,
  sizeof(cap->driver));
 if (gspca_dev->dev->product != ((void*)0)) {
  strscpy((char *)cap->card, gspca_dev->dev->product,
   sizeof(cap->card));
 } else {
  snprintf((char *) cap->card, sizeof cap->card,
   "USB Camera (%04x:%04x)",
   le16_to_cpu(gspca_dev->dev->descriptor.idVendor),
   le16_to_cpu(gspca_dev->dev->descriptor.idProduct));
 }
 usb_make_path(gspca_dev->dev, (char *) cap->bus_info,
   sizeof(cap->bus_info));
 return 0;
}
