
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ memory; scalar_t__ type; } ;
struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 struct s5p_mfc_ctx* fh_to_ctx (void*) ;
 int mfc_debug (int,char*) ;
 int mfc_err (char*) ;
 int reqbufs_capture (struct s5p_mfc_dev*,struct s5p_mfc_ctx*,struct v4l2_requestbuffers*) ;
 int reqbufs_output (struct s5p_mfc_dev*,struct s5p_mfc_ctx*,struct v4l2_requestbuffers*) ;
 struct s5p_mfc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *priv,
       struct v4l2_requestbuffers *reqbufs)
{
 struct s5p_mfc_dev *dev = video_drvdata(file);
 struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);

 if (reqbufs->memory != V4L2_MEMORY_MMAP) {
  mfc_debug(2, "Only V4L2_MEMORY_MMAP is supported\n");
  return -EINVAL;
 }

 if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  return reqbufs_output(dev, ctx, reqbufs);
 } else if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  return reqbufs_capture(dev, ctx, reqbufs);
 } else {
  mfc_err("Invalid type requested\n");
  return -EINVAL;
 }
}
