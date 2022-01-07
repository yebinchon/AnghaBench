
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct venus_inst {int dummy; } ;
struct venus_format {scalar_t__ pixfmt; scalar_t__ type; } ;


 unsigned int ARRAY_SIZE (struct venus_format*) ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct venus_format* vdec_formats ;
 int venus_helper_check_codec (struct venus_inst*,scalar_t__) ;

__attribute__((used)) static const struct venus_format *
find_format(struct venus_inst *inst, u32 pixfmt, u32 type)
{
 const struct venus_format *fmt = vdec_formats;
 unsigned int size = ARRAY_SIZE(vdec_formats);
 unsigned int i;

 for (i = 0; i < size; i++) {
  if (fmt[i].pixfmt == pixfmt)
   break;
 }

 if (i == size || fmt[i].type != type)
  return ((void*)0);

 if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE &&
     !venus_helper_check_codec(inst, fmt[i].pixfmt))
  return ((void*)0);

 return &fmt[i];
}
