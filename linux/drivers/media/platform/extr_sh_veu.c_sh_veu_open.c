
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_veu_file {int cfg_needed; int fh; struct sh_veu_dev* veu_dev; } ;
struct sh_veu_dev {int dev; } ;
struct file {struct sh_veu_file* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,struct sh_veu_file*) ;
 struct sh_veu_file* kzalloc (int,int ) ;
 int pm_runtime_get_sync (int ) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_init (int *,int ) ;
 int video_devdata (struct file*) ;
 struct sh_veu_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int sh_veu_open(struct file *file)
{
 struct sh_veu_dev *veu = video_drvdata(file);
 struct sh_veu_file *veu_file;

 veu_file = kzalloc(sizeof(*veu_file), GFP_KERNEL);
 if (!veu_file)
  return -ENOMEM;

 v4l2_fh_init(&veu_file->fh, video_devdata(file));
 veu_file->veu_dev = veu;
 veu_file->cfg_needed = 1;

 file->private_data = veu_file;

 pm_runtime_get_sync(veu->dev);
 v4l2_fh_add(&veu_file->fh);

 dev_dbg(veu->dev, "Created instance %p\n", veu_file);

 return 0;
}
