
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rowEnd; int rowStart; int colEnd; int colStart; } ;
struct TYPE_6__ {int yuvOrder; int subSample; int videoSize; } ;
struct TYPE_5__ {TYPE_1__ roi; TYPE_3__ format; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_SetFormat ;
 int CPIA_COMMAND_SetROI ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int command_setformat(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret;

 ret = do_command(gspca_dev, CPIA_COMMAND_SetFormat,
    sd->params.format.videoSize,
    sd->params.format.subSample,
    sd->params.format.yuvOrder, 0);
 if (ret)
  return ret;

 return do_command(gspca_dev, CPIA_COMMAND_SetROI,
     sd->params.roi.colStart, sd->params.roi.colEnd,
     sd->params.roi.rowStart, sd->params.roi.rowEnd);
}
