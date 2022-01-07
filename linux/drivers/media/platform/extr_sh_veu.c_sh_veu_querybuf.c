
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_buffer {int type; } ;
struct sh_veu_file {TYPE_1__* veu_dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int m2m_ctx; } ;


 int EBUSY ;
 int sh_veu_is_streamer (TYPE_1__*,struct sh_veu_file*,int ) ;
 int v4l2_m2m_querybuf (struct file*,int ,struct v4l2_buffer*) ;

__attribute__((used)) static int sh_veu_querybuf(struct file *file, void *priv,
      struct v4l2_buffer *buf)
{
 struct sh_veu_file *veu_file = priv;

 if (!sh_veu_is_streamer(veu_file->veu_dev, veu_file, buf->type))
  return -EBUSY;

 return v4l2_m2m_querybuf(file, veu_file->veu_dev->m2m_ctx, buf);
}
