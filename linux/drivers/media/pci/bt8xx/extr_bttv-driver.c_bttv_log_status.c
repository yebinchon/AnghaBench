
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int ctrl_handler; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ v4l2_dev; } ;
struct bttv {TYPE_2__ c; } ;


 int bttv_call_all (struct bttv*,int ,int ) ;
 int core ;
 int log_status ;
 int v4l2_ctrl_handler_log_status (int ,int ) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int bttv_log_status(struct file *file, void *f)
{
 struct video_device *vdev = video_devdata(file);
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;

 v4l2_ctrl_handler_log_status(vdev->ctrl_handler, btv->c.v4l2_dev.name);
 bttv_call_all(btv, core, log_status);
 return 0;
}
