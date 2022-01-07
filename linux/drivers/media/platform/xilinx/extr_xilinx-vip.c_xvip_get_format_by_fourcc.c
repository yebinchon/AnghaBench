
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xvip_video_format {scalar_t__ fourcc; } ;


 unsigned int ARRAY_SIZE (struct xvip_video_format*) ;
 int EINVAL ;
 struct xvip_video_format const* ERR_PTR (int ) ;
 struct xvip_video_format* xvip_video_formats ;

const struct xvip_video_format *xvip_get_format_by_fourcc(u32 fourcc)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(xvip_video_formats); ++i) {
  const struct xvip_video_format *format = &xvip_video_formats[i];

  if (format->fourcc == fourcc)
   return format;
 }

 return ERR_PTR(-EINVAL);
}
