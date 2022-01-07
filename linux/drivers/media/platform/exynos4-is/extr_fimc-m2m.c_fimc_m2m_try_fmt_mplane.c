
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct fimc_ctx {int dummy; } ;
struct file {int dummy; } ;


 struct fimc_ctx* fh_to_ctx (void*) ;
 int fimc_try_fmt_mplane (struct fimc_ctx*,struct v4l2_format*) ;

__attribute__((used)) static int fimc_m2m_try_fmt_mplane(struct file *file, void *fh,
       struct v4l2_format *f)
{
 struct fimc_ctx *ctx = fh_to_ctx(fh);
 return fimc_try_fmt_mplane(ctx, f);
}
