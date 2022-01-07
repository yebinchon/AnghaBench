
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct mtk_mdp_ctx {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct mtk_mdp_ctx* fh_to_ctx (void*) ;
 int mtk_mdp_try_fmt_mplane (struct mtk_mdp_ctx*,struct v4l2_format*) ;

__attribute__((used)) static int mtk_mdp_m2m_try_fmt_mplane(struct file *file, void *fh,
          struct v4l2_format *f)
{
 struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);

 if (!mtk_mdp_try_fmt_mplane(ctx, f))
  return -EINVAL;
 return 0;
}
