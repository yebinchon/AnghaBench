
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct video_device {int dummy; } ;
struct v4l2_ext_controls {size_t count; size_t error_idx; scalar_t__ which; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {size_t id; unsigned int size; } ;
struct v4l2_ctrl_ref {struct v4l2_ctrl_helper* helper; struct v4l2_ctrl* ctrl; } ;
struct v4l2_ctrl_helper {size_t next; struct v4l2_ctrl_ref* mref; struct v4l2_ctrl_ref* ref; } ;
struct v4l2_ctrl_handler {int lock; } ;
struct v4l2_ctrl {int flags; int ncontrols; size_t id; unsigned int elems; unsigned int elem_size; int is_string; scalar_t__ is_ptr; struct v4l2_ctrl** cluster; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOSPC ;
 size_t V4L2_CID_PRIVATE_BASE ;
 int V4L2_CTRL_FLAG_DISABLED ;
 scalar_t__ V4L2_CTRL_ID2WHICH (size_t) ;
 size_t V4L2_CTRL_ID_MASK ;
 scalar_t__ V4L2_CTRL_WHICH_DEF_VAL ;
 scalar_t__ V4L2_CTRL_WHICH_REQUEST_VAL ;
 int dprintk (struct video_device*,char*,...) ;
 struct v4l2_ctrl_ref* find_ref_lock (struct v4l2_ctrl_handler*,size_t) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

__attribute__((used)) static int prepare_ext_ctrls(struct v4l2_ctrl_handler *hdl,
        struct v4l2_ext_controls *cs,
        struct v4l2_ctrl_helper *helpers,
        struct video_device *vdev,
        bool get)
{
 struct v4l2_ctrl_helper *h;
 bool have_clusters = 0;
 u32 i;

 for (i = 0, h = helpers; i < cs->count; i++, h++) {
  struct v4l2_ext_control *c = &cs->controls[i];
  struct v4l2_ctrl_ref *ref;
  struct v4l2_ctrl *ctrl;
  u32 id = c->id & V4L2_CTRL_ID_MASK;

  cs->error_idx = i;

  if (cs->which &&
      cs->which != V4L2_CTRL_WHICH_DEF_VAL &&
      cs->which != V4L2_CTRL_WHICH_REQUEST_VAL &&
      V4L2_CTRL_ID2WHICH(id) != cs->which) {
   dprintk(vdev,
    "invalid which 0x%x or control id 0x%x\n",
    cs->which, id);
   return -EINVAL;
  }



  if (id >= V4L2_CID_PRIVATE_BASE) {
   dprintk(vdev,
    "old-style private controls not allowed\n");
   return -EINVAL;
  }
  ref = find_ref_lock(hdl, id);
  if (ref == ((void*)0)) {
   dprintk(vdev, "cannot find control id 0x%x\n", id);
   return -EINVAL;
  }
  h->ref = ref;
  ctrl = ref->ctrl;
  if (ctrl->flags & V4L2_CTRL_FLAG_DISABLED) {
   dprintk(vdev, "control id 0x%x is disabled\n", id);
   return -EINVAL;
  }

  if (ctrl->cluster[0]->ncontrols > 1)
   have_clusters = 1;
  if (ctrl->cluster[0] != ctrl)
   ref = find_ref_lock(hdl, ctrl->cluster[0]->id);
  if (ctrl->is_ptr && !ctrl->is_string) {
   unsigned tot_size = ctrl->elems * ctrl->elem_size;

   if (c->size < tot_size) {




    if (get) {
     c->size = tot_size;
     return -ENOSPC;
    }
    dprintk(vdev,
     "pointer control id 0x%x size too small, %d bytes but %d bytes needed\n",
     id, c->size, tot_size);
    return -EFAULT;
   }
   c->size = tot_size;
  }

  h->mref = ref;



  h->next = 0;
 }



 if (!have_clusters)
  return 0;





 mutex_lock(hdl->lock);


 for (i = 0; i < cs->count; i++)
  helpers[i].mref->helper = ((void*)0);
 for (i = 0, h = helpers; i < cs->count; i++, h++) {
  struct v4l2_ctrl_ref *mref = h->mref;



  if (mref->helper) {



   mref->helper->next = i;


   h->mref = ((void*)0);
  }

  mref->helper = h;
 }
 mutex_unlock(hdl->lock);
 return 0;
}
