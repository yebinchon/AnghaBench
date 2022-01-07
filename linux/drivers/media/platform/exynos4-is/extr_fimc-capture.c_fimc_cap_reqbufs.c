
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_requestbuffers {int count; } ;
struct TYPE_2__ {int reqbufs_count; } ;
struct fimc_dev {TYPE_1__ vid_cap; } ;
struct file {int dummy; } ;


 int vb2_ioctl_reqbufs (struct file*,void*,struct v4l2_requestbuffers*) ;
 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_cap_reqbufs(struct file *file, void *priv,
       struct v4l2_requestbuffers *reqbufs)
{
 struct fimc_dev *fimc = video_drvdata(file);
 int ret;

 ret = vb2_ioctl_reqbufs(file, priv, reqbufs);

 if (!ret)
  fimc->vid_cap.reqbufs_count = reqbufs->count;

 return ret;
}
