
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {scalar_t__ vfl_type; } ;
struct file {struct bttv_fh* private_data; } ;
struct TYPE_4__ {scalar_t__ setup_ok; } ;
struct bttv_fh {int type; int do_crop; int fh; int vbi_fmt; int vbi; int cap; TYPE_1__ ov; } ;
struct bttv_buffer {int dummy; } ;
struct TYPE_6__ {TYPE_2__* pci; int nr; } ;
struct bttv {int tvnorm; int mute; int input; int lock; int s_lock; TYPE_3__ c; struct bttv_fh init; int users; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_5__ {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_SEQ_TB ;
 scalar_t__ VFL_TYPE_GRABBER ;
 scalar_t__ VFL_TYPE_VBI ;
 int WARN_ON (int) ;
 int audio_mute (struct bttv*,int ) ;
 int bttv_field_count (struct bttv*) ;
 int bttv_vbi_fmt_reset (int *,int ) ;
 int bttv_vbi_qops ;
 int bttv_video_qops ;
 int dprintk (char*,int ,...) ;
 struct bttv_fh* kmalloc (int,int ) ;
 int reset_crop ;
 int set_input (struct bttv*,int ,int ) ;
 int set_tvnorm (struct bttv*,int ) ;
 scalar_t__ unlikely (int) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_init (int *,struct video_device*) ;
 int * v4l2_type_names ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct bttv* video_drvdata (struct file*) ;
 int videobuf_queue_sg_init (int *,int *,int *,int *,int,int ,int,struct bttv_fh*,int *) ;

__attribute__((used)) static int bttv_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct bttv *btv = video_drvdata(file);
 struct bttv_fh *fh;
 enum v4l2_buf_type type = 0;

 dprintk("open dev=%s\n", video_device_node_name(vdev));

 if (vdev->vfl_type == VFL_TYPE_GRABBER) {
  type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 } else if (vdev->vfl_type == VFL_TYPE_VBI) {
  type = V4L2_BUF_TYPE_VBI_CAPTURE;
 } else {
  WARN_ON(1);
  return -ENODEV;
 }

 dprintk("%d: open called (type=%s)\n",
  btv->c.nr, v4l2_type_names[type]);


 fh = kmalloc(sizeof(*fh), GFP_KERNEL);
 if (unlikely(!fh))
  return -ENOMEM;
 btv->users++;
 file->private_data = fh;

 *fh = btv->init;
 v4l2_fh_init(&fh->fh, vdev);

 fh->type = type;
 fh->ov.setup_ok = 0;

 videobuf_queue_sg_init(&fh->cap, &bttv_video_qops,
       &btv->c.pci->dev, &btv->s_lock,
       V4L2_BUF_TYPE_VIDEO_CAPTURE,
       V4L2_FIELD_INTERLACED,
       sizeof(struct bttv_buffer),
       fh, &btv->lock);
 videobuf_queue_sg_init(&fh->vbi, &bttv_vbi_qops,
       &btv->c.pci->dev, &btv->s_lock,
       V4L2_BUF_TYPE_VBI_CAPTURE,
       V4L2_FIELD_SEQ_TB,
       sizeof(struct bttv_buffer),
       fh, &btv->lock);
 set_tvnorm(btv,btv->tvnorm);
 set_input(btv, btv->input, btv->tvnorm);
 audio_mute(btv, btv->mute);
 fh->do_crop = !reset_crop;




 bttv_vbi_fmt_reset(&fh->vbi_fmt, btv->tvnorm);

 bttv_field_count(btv);
 v4l2_fh_add(&fh->fh);
 return 0;
}
