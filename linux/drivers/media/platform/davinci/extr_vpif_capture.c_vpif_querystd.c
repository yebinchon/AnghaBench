
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct video_device {int dummy; } ;
struct file {int dummy; } ;
struct channel_obj {int sd; } ;


 int ENODATA ;
 int ENODEV ;
 int ENOIOCTLCMD ;
 int debug ;
 int querystd ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int video ;
 struct video_device* video_devdata (struct file*) ;
 struct channel_obj* video_get_drvdata (struct video_device*) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_querystd(struct file *file, void *priv, v4l2_std_id *std_id)
{
 struct video_device *vdev = video_devdata(file);
 struct channel_obj *ch = video_get_drvdata(vdev);
 int ret;

 vpif_dbg(2, debug, "vpif_querystd\n");


 ret = v4l2_subdev_call(ch->sd, video, querystd, std_id);

 if (ret == -ENOIOCTLCMD || ret == -ENODEV)
  return -ENODATA;
 if (ret) {
  vpif_dbg(1, debug, "Failed to query standard for sub devices\n");
  return ret;
 }

 return 0;
}
