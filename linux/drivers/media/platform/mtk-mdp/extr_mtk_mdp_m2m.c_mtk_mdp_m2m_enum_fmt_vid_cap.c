
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int mtk_mdp_enum_fmt (struct v4l2_fmtdesc*,int ) ;

__attribute__((used)) static int mtk_mdp_m2m_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 return mtk_mdp_enum_fmt(f, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
}
