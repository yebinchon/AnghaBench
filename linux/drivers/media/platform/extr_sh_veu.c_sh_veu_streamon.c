
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_veu_file {int cfg_needed; struct sh_veu_dev* veu_dev; } ;
struct sh_veu_dev {int aborting; int m2m_ctx; scalar_t__ xaction; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int sh_veu_configure (struct sh_veu_dev*) ;
 int sh_veu_is_streamer (struct sh_veu_dev*,struct sh_veu_file*,int) ;
 int v4l2_m2m_streamon (struct file*,int ,int) ;

__attribute__((used)) static int sh_veu_streamon(struct file *file, void *priv,
      enum v4l2_buf_type type)
{
 struct sh_veu_file *veu_file = priv;

 if (!sh_veu_is_streamer(veu_file->veu_dev, veu_file, type))
  return -EBUSY;

 if (veu_file->cfg_needed) {
  struct sh_veu_dev *veu = veu_file->veu_dev;
  veu_file->cfg_needed = 0;
  sh_veu_configure(veu_file->veu_dev);
  veu->xaction = 0;
  veu->aborting = 0;
 }

 return v4l2_m2m_streamon(file, veu_file->veu_dev->m2m_ctx, type);
}
