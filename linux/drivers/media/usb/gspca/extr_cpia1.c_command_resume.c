
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int streamStartLine; } ;
struct sd {TYPE_1__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_InitStreamCap ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int command_resume(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 return do_command(gspca_dev, CPIA_COMMAND_InitStreamCap,
     0, sd->params.streamStartLine, 0, 0);
}
