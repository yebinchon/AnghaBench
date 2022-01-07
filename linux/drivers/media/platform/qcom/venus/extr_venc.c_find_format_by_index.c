
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct venus_inst {int dummy; } ;
struct venus_format {scalar_t__ type; int pixfmt; } ;


 unsigned int ARRAY_SIZE (struct venus_format*) ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 struct venus_format* venc_formats ;
 scalar_t__ venus_helper_check_codec (struct venus_inst*,int ) ;

__attribute__((used)) static const struct venus_format *
find_format_by_index(struct venus_inst *inst, unsigned int index, u32 type)
{
 const struct venus_format *fmt = venc_formats;
 unsigned int size = ARRAY_SIZE(venc_formats);
 unsigned int i, k = 0;

 if (index > size)
  return ((void*)0);

 for (i = 0; i < size; i++) {
  bool valid;

  if (fmt[i].type != type)
   continue;
  valid = type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ||
   venus_helper_check_codec(inst, fmt[i].pixfmt);
  if (k == index && valid)
   break;
  if (valid)
   k++;
 }

 if (i == size)
  return ((void*)0);

 return &fmt[i];
}
