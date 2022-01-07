
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct sun4i_csi {int fmt; } ;
struct file {int dummy; } ;


 int _sun4i_csi_try_fmt (struct sun4i_csi*,int *) ;
 struct sun4i_csi* video_drvdata (struct file*) ;

__attribute__((used)) static int sun4i_csi_s_fmt_vid_cap(struct file *file, void *priv,
       struct v4l2_format *f)
{
 struct sun4i_csi *csi = video_drvdata(file);

 _sun4i_csi_try_fmt(csi, &f->fmt.pix_mp);
 csi->fmt = f->fmt.pix_mp;

 return 0;
}
