
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct file {int dummy; } ;
struct bttv_fh {int dummy; } ;


 int bttv_queue (struct bttv_fh*) ;
 int videobuf_reqbufs (int ,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int bttv_reqbufs(struct file *file, void *priv,
    struct v4l2_requestbuffers *p)
{
 struct bttv_fh *fh = priv;
 return videobuf_reqbufs(bttv_queue(fh), p);
}
