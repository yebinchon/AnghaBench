
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_video_format {unsigned int code; } ;


 unsigned int ARRAY_SIZE (struct xvip_video_format*) ;
 int EINVAL ;
 struct xvip_video_format const* ERR_PTR (int ) ;
 struct xvip_video_format* xvip_video_formats ;

const struct xvip_video_format *xvip_get_format_by_code(unsigned int code)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(xvip_video_formats); ++i) {
  const struct xvip_video_format *format = &xvip_video_formats[i];

  if (format->code == code)
   return format;
 }

 return ERR_PTR(-EINVAL);
}
