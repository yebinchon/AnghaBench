
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expMode; } ;
struct TYPE_4__ {TYPE_1__ exposure; } ;
struct sd {scalar_t__ first_frame; TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_GetExposure ;
 int CPIA_COMMAND_ReadMCPorts ;
 int command_setcompression (struct gspca_dev*) ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;
 int monitor_exposure (struct gspca_dev*) ;
 int restart_flicker (struct gspca_dev*) ;

__attribute__((used)) static void sd_dq_callback(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;



 if (sd->first_frame) {
  sd->first_frame--;
  if (sd->first_frame == 0)
   command_setcompression(gspca_dev);
 }


 restart_flicker(gspca_dev);



 if (sd->params.exposure.expMode == 2)
  monitor_exposure(gspca_dev);


 do_command(gspca_dev, CPIA_COMMAND_GetExposure, 0, 0, 0, 0);
 do_command(gspca_dev, CPIA_COMMAND_ReadMCPorts, 0, 0, 0, 0);
}
