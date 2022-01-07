
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int denominator; int numerator; } ;
struct TYPE_11__ {TYPE_3__ timeperframe; } ;
struct TYPE_12__ {TYPE_4__ capture; } ;
struct v4l2_streamparm {TYPE_5__ parm; } ;
struct TYPE_13__ {int sizeimage; int width; int height; } ;
struct TYPE_8__ {int needs_full_bandwidth; } ;
struct gspca_dev {TYPE_7__* dev; TYPE_6__ pixfmt; TYPE_2__* sd_desc; TYPE_1__ cam; } ;
struct TYPE_14__ {scalar_t__ speed; } ;
struct TYPE_9__ {int (* get_streamparm ) (struct gspca_dev*,struct v4l2_streamparm*) ;} ;


 int D_STREAM ;
 scalar_t__ USB_SPEED_FULL ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int stub1 (struct gspca_dev*,struct v4l2_streamparm*) ;

__attribute__((used)) static u32 which_bandwidth(struct gspca_dev *gspca_dev)
{
 u32 bandwidth;


 bandwidth = gspca_dev->pixfmt.sizeimage;


 if (!gspca_dev->cam.needs_full_bandwidth &&
     bandwidth < gspca_dev->pixfmt.width *
    gspca_dev->pixfmt.height)
  bandwidth = bandwidth * 3 / 8;


 if (gspca_dev->sd_desc->get_streamparm) {
  struct v4l2_streamparm parm;

  gspca_dev->sd_desc->get_streamparm(gspca_dev, &parm);
  bandwidth *= parm.parm.capture.timeperframe.denominator;
  bandwidth /= parm.parm.capture.timeperframe.numerator;
 } else {



  if (gspca_dev->pixfmt.width >= 640
   && gspca_dev->dev->speed == USB_SPEED_FULL)
   bandwidth *= 15;
  else
   bandwidth *= 30;
 }

 gspca_dbg(gspca_dev, D_STREAM, "min bandwidth: %d\n", bandwidth);
 return bandwidth;
}
