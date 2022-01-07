
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ bridge; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 scalar_t__ BRIDGE_W9968CF ;
 int setfreq_i (struct sd*,int ) ;
 int w9968cf_set_crop_window (struct sd*) ;

__attribute__((used)) static void setfreq(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 setfreq_i(sd, val);


 if (sd->bridge == BRIDGE_W9968CF)
  w9968cf_set_crop_window(sd);
}
