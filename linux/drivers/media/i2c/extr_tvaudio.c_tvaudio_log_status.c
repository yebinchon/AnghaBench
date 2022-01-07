
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct CHIPSTATE {int hdl; struct CHIPDESC* desc; } ;
struct CHIPDESC {int name; } ;


 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ) ;

__attribute__((used)) static int tvaudio_log_status(struct v4l2_subdev *sd)
{
 struct CHIPSTATE *chip = to_state(sd);
 struct CHIPDESC *desc = chip->desc;

 v4l2_info(sd, "Chip: %s\n", desc->name);
 v4l2_ctrl_handler_log_status(&chip->hdl, sd->name);
 return 0;
}
