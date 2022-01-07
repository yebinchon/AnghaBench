
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2255_pipeinfo {int dummy; } ;
struct s2255_dev {scalar_t__ cc; TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MAX_CHANNELS ;
 int dev_err (int *,char*) ;
 int dprintk (struct s2255_dev*,int,char*) ;
 int save_frame (struct s2255_dev*,struct s2255_pipeinfo*) ;

__attribute__((used)) static void s2255_read_video_callback(struct s2255_dev *dev,
          struct s2255_pipeinfo *pipe_info)
{
 int res;
 dprintk(dev, 50, "callback read video\n");

 if (dev->cc >= MAX_CHANNELS) {
  dev->cc = 0;
  dev_err(&dev->udev->dev, "invalid channel\n");
  return;
 }

 res = save_frame(dev, pipe_info);
 if (res != 0)
  dprintk(dev, 4, "s2255: read callback failed\n");

 dprintk(dev, 50, "callback read video done\n");
 return;
}
