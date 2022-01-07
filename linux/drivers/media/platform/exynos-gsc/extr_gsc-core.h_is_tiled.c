
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_fmt {scalar_t__ pixelformat; } ;


 scalar_t__ V4L2_PIX_FMT_NV12MT_16X16 ;

__attribute__((used)) static inline int is_tiled(const struct gsc_fmt *fmt)
{
 return fmt->pixelformat == V4L2_PIX_FMT_NV12MT_16X16;
}
