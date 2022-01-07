
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int present; } ;
struct sd {int orig_mode; TYPE_1__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;


 int stv0680_set_video_mode (struct gspca_dev*,int ) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (!sd->gspca_dev.present)
  return;

 stv0680_set_video_mode(gspca_dev, sd->orig_mode);
}
