
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_3__* pdi; TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_6__ {int stream; } ;
struct TYPE_4__ {struct pvr2_hdw* hdw; } ;


 int EPERM ;
 int pvr2_hdw_set_streaming (struct pvr2_hdw*,int ) ;

__attribute__((used)) static int pvr2_streamoff(struct file *file, void *priv, enum v4l2_buf_type i)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;

 if (!fh->pdi->stream) {



  return -EPERM;
 }
 return pvr2_hdw_set_streaming(hdw, 0);
}
