
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_ctrl_ref {struct v4l2_ctrl_ref* next; TYPE_1__* ctrl; } ;
struct v4l2_ctrl_handler {int nr_of_buckets; struct v4l2_ctrl_ref* cached; struct v4l2_ctrl_ref** buckets; } ;
struct TYPE_2__ {int id; } ;


 int V4L2_CID_PRIVATE_BASE ;
 int V4L2_CTRL_ID_MASK ;
 struct v4l2_ctrl_ref* find_private_ref (struct v4l2_ctrl_handler*,int) ;

__attribute__((used)) static struct v4l2_ctrl_ref *find_ref(struct v4l2_ctrl_handler *hdl, u32 id)
{
 struct v4l2_ctrl_ref *ref;
 int bucket;

 id &= V4L2_CTRL_ID_MASK;


 if (id >= V4L2_CID_PRIVATE_BASE)
  return find_private_ref(hdl, id);
 bucket = id % hdl->nr_of_buckets;


 if (hdl->cached && hdl->cached->ctrl->id == id)
  return hdl->cached;


 ref = hdl->buckets ? hdl->buckets[bucket] : ((void*)0);
 while (ref && ref->ctrl->id != id)
  ref = ref->next;

 if (ref)
  hdl->cached = ref;
 return ref;
}
