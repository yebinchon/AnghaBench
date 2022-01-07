
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_veu_file {TYPE_1__* veu_dev; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int m2m_ctx; } ;


 int EBUSY ;
 int sh_veu_is_streamer (TYPE_1__*,struct sh_veu_file*,int) ;
 int v4l2_m2m_streamoff (struct file*,int ,int) ;

__attribute__((used)) static int sh_veu_streamoff(struct file *file, void *priv,
       enum v4l2_buf_type type)
{
 struct sh_veu_file *veu_file = priv;

 if (!sh_veu_is_streamer(veu_file->veu_dev, veu_file, type))
  return -EBUSY;

 return v4l2_m2m_streamoff(file, veu_file->veu_dev->m2m_ctx, type);
}
