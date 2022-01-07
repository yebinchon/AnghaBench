
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct venus_inst {int dummy; } ;
struct venus_format {int dummy; } ;
struct TYPE_7__ {int numerator; void* denominator; } ;
struct TYPE_6__ {int numerator; int denominator; } ;
struct TYPE_5__ {int numerator; void* denominator; } ;
struct TYPE_8__ {TYPE_3__ step; TYPE_2__ max; TYPE_1__ min; } ;
struct v4l2_frmivalenum {scalar_t__ width; scalar_t__ height; TYPE_4__ stepwise; scalar_t__ index; int pixel_format; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_FRMIVAL_TYPE_STEPWISE ;
 struct venus_format* find_format (struct venus_inst*,int ,int ) ;
 scalar_t__ frame_height_max (struct venus_inst*) ;
 scalar_t__ frame_height_min (struct venus_inst*) ;
 scalar_t__ frame_width_max (struct venus_inst*) ;
 scalar_t__ frame_width_min (struct venus_inst*) ;
 void* frate_max (struct venus_inst*) ;
 int frate_min (struct venus_inst*) ;
 struct venus_inst* to_inst (struct file*) ;

__attribute__((used)) static int venc_enum_frameintervals(struct file *file, void *fh,
        struct v4l2_frmivalenum *fival)
{
 struct venus_inst *inst = to_inst(file);
 const struct venus_format *fmt;

 fival->type = V4L2_FRMIVAL_TYPE_STEPWISE;

 fmt = find_format(inst, fival->pixel_format,
     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
 if (!fmt) {
  fmt = find_format(inst, fival->pixel_format,
      V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
  if (!fmt)
   return -EINVAL;
 }

 if (fival->index)
  return -EINVAL;

 if (!fival->width || !fival->height)
  return -EINVAL;

 if (fival->width > frame_width_max(inst) ||
     fival->width < frame_width_min(inst) ||
     fival->height > frame_height_max(inst) ||
     fival->height < frame_height_min(inst))
  return -EINVAL;

 fival->stepwise.min.numerator = 1;
 fival->stepwise.min.denominator = frate_max(inst);
 fival->stepwise.max.numerator = 1;
 fival->stepwise.max.denominator = frate_min(inst);
 fival->stepwise.step.numerator = 1;
 fival->stepwise.step.denominator = frate_max(inst);

 return 0;
}
