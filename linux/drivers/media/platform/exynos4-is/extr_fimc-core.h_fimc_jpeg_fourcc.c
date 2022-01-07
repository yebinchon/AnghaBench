
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ V4L2_PIX_FMT_JPEG ;
 scalar_t__ V4L2_PIX_FMT_S5C_UYVY_JPG ;

__attribute__((used)) static inline bool fimc_jpeg_fourcc(u32 pixelformat)
{
 return (pixelformat == V4L2_PIX_FMT_JPEG ||
  pixelformat == V4L2_PIX_FMT_S5C_UYVY_JPG);
}
