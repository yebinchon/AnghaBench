
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_fmt {scalar_t__ fourcc; } ;


 scalar_t__ V4L2_PIX_FMT_NV12MT ;

__attribute__((used)) static inline int tiled_fmt(struct fimc_fmt *fmt)
{
 return fmt->fourcc == V4L2_PIX_FMT_NV12MT;
}
