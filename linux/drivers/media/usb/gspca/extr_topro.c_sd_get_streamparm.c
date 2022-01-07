
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_captureparm {struct v4l2_fract timeperframe; } ;
struct TYPE_2__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_1__ parm; } ;
struct sd {scalar_t__ bridge; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ BRIDGE_TP6800 ;
 int get_fr_idx (struct gspca_dev*) ;
 int* rates ;
 int* rates_6810 ;

__attribute__((used)) static void sd_get_streamparm(struct gspca_dev *gspca_dev,
        struct v4l2_streamparm *parm)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct v4l2_captureparm *cp = &parm->parm.capture;
 struct v4l2_fract *tpf = &cp->timeperframe;
 int fr, i;

 tpf->numerator = 1;
 i = get_fr_idx(gspca_dev);
 if (i & 0x80) {
  if (sd->bridge == BRIDGE_TP6800)
   fr = rates[6 - (i & 0x07)];
  else
   fr = rates_6810[7 - (i & 0x07)];
 } else {
  fr = rates[6 - i];
 }
 tpf->denominator = fr;
}
