
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2255_fmt {int fourcc; } ;


 unsigned int ARRAY_SIZE (struct s2255_fmt const*) ;
 int V4L2_PIX_FMT_JPEG ;
 int V4L2_PIX_FMT_MJPEG ;
 struct s2255_fmt const* formats ;
 int jpeg_enable ;

__attribute__((used)) static const struct s2255_fmt *format_by_fourcc(int fourcc)
{
 unsigned int i;
 for (i = 0; i < ARRAY_SIZE(formats); i++) {
  if (-1 == formats[i].fourcc)
   continue;
  if (!jpeg_enable && ((formats[i].fourcc == V4L2_PIX_FMT_JPEG) ||
         (formats[i].fourcc == V4L2_PIX_FMT_MJPEG)))
   continue;
  if (formats[i].fourcc == fourcc)
   return formats + i;
 }
 return ((void*)0);
}
