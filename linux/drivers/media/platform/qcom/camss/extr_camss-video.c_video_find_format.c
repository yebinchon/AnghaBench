
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct camss_format_info {scalar_t__ code; scalar_t__ pixelformat; } ;


 int EINVAL ;
 int WARN_ON (int) ;

__attribute__((used)) static int video_find_format(u32 code, u32 pixelformat,
        const struct camss_format_info *formats,
        unsigned int nformats)
{
 int i;

 for (i = 0; i < nformats; i++) {
  if (formats[i].code == code &&
      formats[i].pixelformat == pixelformat)
   return i;
 }

 for (i = 0; i < nformats; i++)
  if (formats[i].code == code)
   return i;

 WARN_ON(1);

 return -EINVAL;
}
