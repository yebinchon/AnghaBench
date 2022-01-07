
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int minor; int device_caps; int entity; int name; int flags; int vfl_dir; int * lock; int release; struct v4l2_device* v4l2_dev; int * ioctl_ops; int * fops; } ;
struct v4l2_device {int dummy; } ;
struct TYPE_2__ {int m2m_dev; struct video_device vfd; } ;
struct fimc_dev {int id; TYPE_1__ m2m; int lock; struct v4l2_device* v4l2_dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M_MPLANE ;
 int V4L2_FL_QUIRK_INVERTED_CROP ;
 int VFL_DIR_M2M ;
 int VFL_TYPE_GRABBER ;
 int fimc_m2m_fops ;
 int fimc_m2m_ioctl_ops ;
 int m2m_ops ;
 int media_entity_cleanup (int *) ;
 int media_entity_pads_init (int *,int ,int *) ;
 int memset (struct video_device*,int ,int) ;
 int set_bit (int ,int *) ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_err (struct v4l2_device*,char*) ;
 int v4l2_info (struct v4l2_device*,char*,int ,int ) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct fimc_dev*) ;

int fimc_register_m2m_device(struct fimc_dev *fimc,
        struct v4l2_device *v4l2_dev)
{
 struct video_device *vfd = &fimc->m2m.vfd;
 int ret;

 fimc->v4l2_dev = v4l2_dev;

 memset(vfd, 0, sizeof(*vfd));
 vfd->fops = &fimc_m2m_fops;
 vfd->ioctl_ops = &fimc_m2m_ioctl_ops;
 vfd->v4l2_dev = v4l2_dev;
 vfd->minor = -1;
 vfd->release = video_device_release_empty;
 vfd->lock = &fimc->lock;
 vfd->vfl_dir = VFL_DIR_M2M;
 vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
 set_bit(V4L2_FL_QUIRK_INVERTED_CROP, &vfd->flags);

 snprintf(vfd->name, sizeof(vfd->name), "fimc.%d.m2m", fimc->id);
 video_set_drvdata(vfd, fimc);

 fimc->m2m.m2m_dev = v4l2_m2m_init(&m2m_ops);
 if (IS_ERR(fimc->m2m.m2m_dev)) {
  v4l2_err(v4l2_dev, "failed to initialize v4l2-m2m device\n");
  return PTR_ERR(fimc->m2m.m2m_dev);
 }

 ret = media_entity_pads_init(&vfd->entity, 0, ((void*)0));
 if (ret)
  goto err_me;

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 if (ret)
  goto err_vd;

 v4l2_info(v4l2_dev, "Registered %s as /dev/%s\n",
    vfd->name, video_device_node_name(vfd));
 return 0;

err_vd:
 media_entity_cleanup(&vfd->entity);
err_me:
 v4l2_m2m_release(fimc->m2m.m2m_dev);
 return ret;
}
