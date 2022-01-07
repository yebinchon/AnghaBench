
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_veu_file {int fh; } ;
struct sh_veu_dev {int dev; int * m2m_ctx; struct sh_veu_file* capture; struct sh_veu_file* output; } ;
struct file {struct sh_veu_file* private_data; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int dev_dbg (int ,char*,struct sh_veu_file*) ;
 int kfree (struct sh_veu_file*) ;
 int pm_runtime_put (int ) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_m2m_ctx_release (int *) ;
 int v4l2_m2m_get_vq (int *,int ) ;
 int vb2_queue_release (int ) ;
 struct sh_veu_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int sh_veu_release(struct file *file)
{
 struct sh_veu_dev *veu = video_drvdata(file);
 struct sh_veu_file *veu_file = file->private_data;

 dev_dbg(veu->dev, "Releasing instance %p\n", veu_file);

 if (veu_file == veu->capture) {
  veu->capture = ((void*)0);
  vb2_queue_release(v4l2_m2m_get_vq(veu->m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE));
 }

 if (veu_file == veu->output) {
  veu->output = ((void*)0);
  vb2_queue_release(v4l2_m2m_get_vq(veu->m2m_ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT));
 }

 if (!veu->output && !veu->capture && veu->m2m_ctx) {
  v4l2_m2m_ctx_release(veu->m2m_ctx);
  veu->m2m_ctx = ((void*)0);
 }

 pm_runtime_put(veu->dev);
 v4l2_fh_del(&veu_file->fh);
 v4l2_fh_exit(&veu_file->fh);

 kfree(veu_file);

 return 0;
}
