
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct file {struct bttv_fh* private_data; } ;
struct bttv_fh {int fh; } ;
struct TYPE_2__ {int nr; } ;
struct bttv {int mute; int radio_user; struct bttv_fh init; TYPE_1__ c; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int audio_mute (struct bttv*,int ) ;
 int dprintk (char*,int ) ;
 struct bttv_fh* kmalloc (int,int ) ;
 scalar_t__ unlikely (int) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_init (int *,struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct bttv* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct bttv *btv = video_drvdata(file);
 struct bttv_fh *fh;

 dprintk("open dev=%s\n", video_device_node_name(vdev));

 dprintk("%d: open called (radio)\n", btv->c.nr);


 fh = kmalloc(sizeof(*fh), GFP_KERNEL);
 if (unlikely(!fh))
  return -ENOMEM;
 file->private_data = fh;
 *fh = btv->init;
 v4l2_fh_init(&fh->fh, vdev);

 btv->radio_user++;
 audio_mute(btv, btv->mute);

 v4l2_fh_add(&fh->fh);

 return 0;
}
