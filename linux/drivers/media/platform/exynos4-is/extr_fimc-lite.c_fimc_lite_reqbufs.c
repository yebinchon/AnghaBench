
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int count; } ;
struct fimc_lite {int reqbufs_count; } ;
struct file {int dummy; } ;


 int FLITE_REQ_BUFS_MIN ;
 int max_t (int ,int ,int ) ;
 int u32 ;
 int vb2_ioctl_reqbufs (struct file*,void*,struct v4l2_requestbuffers*) ;
 struct fimc_lite* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_lite_reqbufs(struct file *file, void *priv,
        struct v4l2_requestbuffers *reqbufs)
{
 struct fimc_lite *fimc = video_drvdata(file);
 int ret;

 reqbufs->count = max_t(u32, FLITE_REQ_BUFS_MIN, reqbufs->count);
 ret = vb2_ioctl_reqbufs(file, priv, reqbufs);
 if (!ret)
  fimc->reqbufs_count = reqbufs->count;

 return ret;
}
