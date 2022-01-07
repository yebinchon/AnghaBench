
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gain8; int gain4; int gain2; int gain1; } ;
struct TYPE_4__ {TYPE_1__ vlOffset; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_SetVLOffset ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int command_setvloffset(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 return do_command(gspca_dev, CPIA_COMMAND_SetVLOffset,
     sd->params.vlOffset.gain1,
     sd->params.vlOffset.gain2,
     sd->params.vlOffset.gain4,
     sd->params.vlOffset.gain8);
}
