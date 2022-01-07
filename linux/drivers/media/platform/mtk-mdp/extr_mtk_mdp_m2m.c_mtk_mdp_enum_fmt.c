
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_fmtdesc {int pixelformat; int index; } ;
struct mtk_mdp_fmt {int pixelformat; } ;


 int EINVAL ;
 struct mtk_mdp_fmt* mtk_mdp_find_fmt_by_index (int ,int ) ;

__attribute__((used)) static int mtk_mdp_enum_fmt(struct v4l2_fmtdesc *f, u32 type)
{
 const struct mtk_mdp_fmt *fmt;

 fmt = mtk_mdp_find_fmt_by_index(f->index, type);
 if (!fmt)
  return -EINVAL;

 f->pixelformat = fmt->pixelformat;

 return 0;
}
