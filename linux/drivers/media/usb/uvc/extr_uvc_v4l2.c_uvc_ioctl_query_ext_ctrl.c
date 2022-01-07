
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int flags; int default_value; int step; int maximum; int minimum; int name; int type; int id; int member_0; } ;
struct v4l2_query_ext_ctrl {int elem_size; int elems; int reserved; int dims; scalar_t__ nr_of_dims; int flags; int default_value; int step; int maximum; int minimum; int name; int type; int id; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_fh {struct uvc_video_chain* chain; } ;
struct file {int dummy; } ;


 int memset (int ,int ,int) ;
 int strscpy (int ,int ,int) ;
 int uvc_query_v4l2_ctrl (struct uvc_video_chain*,struct v4l2_queryctrl*) ;

__attribute__((used)) static int uvc_ioctl_query_ext_ctrl(struct file *file, void *fh,
        struct v4l2_query_ext_ctrl *qec)
{
 struct uvc_fh *handle = fh;
 struct uvc_video_chain *chain = handle->chain;
 struct v4l2_queryctrl qc = { qec->id };
 int ret;

 ret = uvc_query_v4l2_ctrl(chain, &qc);
 if (ret)
  return ret;

 qec->id = qc.id;
 qec->type = qc.type;
 strscpy(qec->name, qc.name, sizeof(qec->name));
 qec->minimum = qc.minimum;
 qec->maximum = qc.maximum;
 qec->step = qc.step;
 qec->default_value = qc.default_value;
 qec->flags = qc.flags;
 qec->elem_size = 4;
 qec->elems = 1;
 qec->nr_of_dims = 0;
 memset(qec->dims, 0, sizeof(qec->dims));
 memset(qec->reserved, 0, sizeof(qec->reserved));

 return 0;
}
