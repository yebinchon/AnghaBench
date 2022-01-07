
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct v4l2_format {scalar_t__ type; } ;
struct file {int dummy; } ;
struct common_obj {struct v4l2_format fmt; } ;
struct channel_obj {struct common_obj* common; } ;


 int EINVAL ;
 size_t VPIF_VIDEO_INDEX ;
 struct video_device* video_devdata (struct file*) ;
 struct channel_obj* video_get_drvdata (struct video_device*) ;
 scalar_t__ vpif_update_resolution (struct channel_obj*) ;

__attribute__((used)) static int vpif_g_fmt_vid_out(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct video_device *vdev = video_devdata(file);
 struct channel_obj *ch = video_get_drvdata(vdev);
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];


 if (common->fmt.type != fmt->type)
  return -EINVAL;

 if (vpif_update_resolution(ch))
  return -EINVAL;
 *fmt = common->fmt;
 return 0;
}
