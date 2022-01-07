
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int resetlevel_frame_count; int resetlevel; int resetlevel_adjust_dir; scalar_t__ restart_stream; } ;
struct gspca_dev {int dummy; } ;


 int HV7131_REG_ARLV ;
 int HV7131_REG_HIREFNOH ;
 int HV7131_REG_HIREFNOL ;
 int HV7131_REG_LOREFNOH ;
 int HV7131_REG_LOREFNOL ;
 int sd_start (struct gspca_dev*) ;
 int sd_stopN (struct gspca_dev*) ;
 int se401_get_feature (struct gspca_dev*,int ) ;
 int se401_set_feature (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void sd_dq_callback(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *)gspca_dev;
 unsigned int ahrc, alrc;
 int oldreset, adjust_dir;


 if (sd->restart_stream) {
  sd_stopN(gspca_dev);
  sd_start(gspca_dev);
  sd->restart_stream = 0;
 }




 sd->resetlevel_frame_count++;
 if (sd->resetlevel_frame_count < 20)
  return;



 se401_get_feature(gspca_dev, HV7131_REG_HIREFNOH);
 se401_get_feature(gspca_dev, HV7131_REG_HIREFNOL);
 se401_get_feature(gspca_dev, HV7131_REG_LOREFNOH);
 se401_get_feature(gspca_dev, HV7131_REG_LOREFNOL);
 ahrc = 256*se401_get_feature(gspca_dev, HV7131_REG_HIREFNOH) +
     se401_get_feature(gspca_dev, HV7131_REG_HIREFNOL);
 alrc = 256*se401_get_feature(gspca_dev, HV7131_REG_LOREFNOH) +
     se401_get_feature(gspca_dev, HV7131_REG_LOREFNOL);


 oldreset = sd->resetlevel;
 if (alrc > 10) {
  while (alrc >= 10 && sd->resetlevel < 63) {
   sd->resetlevel++;
   alrc /= 2;
  }
 } else if (ahrc > 20) {
  while (ahrc >= 20 && sd->resetlevel > 0) {
   sd->resetlevel--;
   ahrc /= 2;
  }
 }

 if (sd->resetlevel > oldreset)
  adjust_dir = 1;
 else
  adjust_dir = -1;
 if (sd->resetlevel_adjust_dir &&
     sd->resetlevel_adjust_dir != adjust_dir)
  sd->resetlevel = oldreset + (sd->resetlevel - oldreset) / 2;

 if (sd->resetlevel != oldreset) {
  sd->resetlevel_adjust_dir = adjust_dir;
  se401_set_feature(gspca_dev, HV7131_REG_ARLV, sd->resetlevel);
 }

 sd->resetlevel_frame_count = 0;
}
