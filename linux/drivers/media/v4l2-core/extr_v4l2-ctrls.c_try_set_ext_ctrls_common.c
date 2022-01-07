
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct video_device {int dummy; } ;
struct v4l2_fh {int dummy; } ;
struct v4l2_ext_controls {unsigned int error_idx; unsigned int count; scalar_t__ which; TYPE_5__* controls; } ;
struct v4l2_ctrl_ref {int dummy; } ;
struct v4l2_ctrl_helper {int next; TYPE_4__* ref; TYPE_1__* mref; } ;
struct TYPE_8__ {scalar_t__ req; } ;
struct v4l2_ctrl_handler {TYPE_2__ req_obj; } ;
struct v4l2_ctrl {unsigned int ncontrols; scalar_t__ manual_mode_value; TYPE_3__** cluster; int p_new; scalar_t__ is_ptr; scalar_t__ has_volatiles; scalar_t__ is_auto; } ;
typedef scalar_t__ s32 ;
typedef int helper ;
struct TYPE_11__ {scalar_t__ value; } ;
struct TYPE_10__ {struct v4l2_ctrl* ctrl; } ;
struct TYPE_9__ {int id; scalar_t__ is_new; } ;
struct TYPE_7__ {struct v4l2_ctrl* ctrl; } ;


 unsigned int ARRAY_SIZE (struct v4l2_ctrl_helper*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ V4L2_CTRL_ID2WHICH (scalar_t__) ;
 scalar_t__ V4L2_CTRL_WHICH_DEF_VAL ;
 int class_check (struct v4l2_ctrl_handler*,scalar_t__) ;
 int dprintk (struct video_device*,char*,int ) ;
 struct v4l2_ctrl_ref* find_ref (struct v4l2_ctrl_handler*,int ) ;
 int is_cur_manual (struct v4l2_ctrl*) ;
 int kvfree (struct v4l2_ctrl_helper*) ;
 struct v4l2_ctrl_helper* kvmalloc_array (unsigned int,int,int ) ;
 int new_to_req (struct v4l2_ctrl_ref*) ;
 int new_to_user (TYPE_5__*,struct v4l2_ctrl*) ;
 int prepare_ext_ctrls (struct v4l2_ctrl_handler*,struct v4l2_ext_controls*,struct v4l2_ctrl_helper*,struct video_device*,int) ;
 int try_or_set_cluster (struct v4l2_fh*,struct v4l2_ctrl*,int,int ) ;
 int update_from_auto_cluster (struct v4l2_ctrl*) ;
 int user_to_new (TYPE_5__*,struct v4l2_ctrl*) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;
 int validate_ctrls (struct v4l2_ext_controls*,struct v4l2_ctrl_helper*,struct video_device*,int) ;
 int validate_new (struct v4l2_ctrl*,int ) ;
 int video_device_node_name (struct video_device*) ;

__attribute__((used)) static int try_set_ext_ctrls_common(struct v4l2_fh *fh,
        struct v4l2_ctrl_handler *hdl,
        struct v4l2_ext_controls *cs,
        struct video_device *vdev, bool set)
{
 struct v4l2_ctrl_helper helper[4];
 struct v4l2_ctrl_helper *helpers = helper;
 unsigned i, j;
 int ret;

 cs->error_idx = cs->count;


 if (cs->which == V4L2_CTRL_WHICH_DEF_VAL) {
  dprintk(vdev, "%s: cannot change default value\n",
   video_device_node_name(vdev));
  return -EINVAL;
 }

 cs->which = V4L2_CTRL_ID2WHICH(cs->which);

 if (hdl == ((void*)0)) {
  dprintk(vdev, "%s: invalid null control handler\n",
   video_device_node_name(vdev));
  return -EINVAL;
 }

 if (cs->count == 0)
  return class_check(hdl, cs->which);

 if (cs->count > ARRAY_SIZE(helper)) {
  helpers = kvmalloc_array(cs->count, sizeof(helper[0]),
      GFP_KERNEL);
  if (!helpers)
   return -ENOMEM;
 }
 ret = prepare_ext_ctrls(hdl, cs, helpers, vdev, 0);
 if (!ret)
  ret = validate_ctrls(cs, helpers, vdev, set);
 if (ret && set)
  cs->error_idx = cs->count;
 for (i = 0; !ret && i < cs->count; i++) {
  struct v4l2_ctrl *master;
  u32 idx = i;

  if (helpers[i].mref == ((void*)0))
   continue;

  cs->error_idx = i;
  master = helpers[i].mref->ctrl;
  v4l2_ctrl_lock(master);


  for (j = 0; j < master->ncontrols; j++)
   if (master->cluster[j])
    master->cluster[j]->is_new = 0;







  if (master->is_auto && master->has_volatiles &&
      !is_cur_manual(master)) {

   s32 new_auto_val = master->manual_mode_value + 1;
   u32 tmp_idx = idx;

   do {


    if (helpers[tmp_idx].ref->ctrl == master)
     new_auto_val = cs->controls[tmp_idx].value;
    tmp_idx = helpers[tmp_idx].next;
   } while (tmp_idx);


   if (new_auto_val == master->manual_mode_value)
    update_from_auto_cluster(master);
  }



  do {
   struct v4l2_ctrl *ctrl = helpers[idx].ref->ctrl;

   ret = user_to_new(cs->controls + idx, ctrl);
   if (!ret && ctrl->is_ptr)
    ret = validate_new(ctrl, ctrl->p_new);
   idx = helpers[idx].next;
  } while (!ret && idx);

  if (!ret)
   ret = try_or_set_cluster(fh, master,
       !hdl->req_obj.req && set, 0);
  if (!ret && hdl->req_obj.req && set) {
   for (j = 0; j < master->ncontrols; j++) {
    struct v4l2_ctrl_ref *ref =
     find_ref(hdl, master->cluster[j]->id);

    new_to_req(ref);
   }
  }


  if (!ret) {
   idx = i;
   do {
    ret = new_to_user(cs->controls + idx,
      helpers[idx].ref->ctrl);
    idx = helpers[idx].next;
   } while (!ret && idx);
  }
  v4l2_ctrl_unlock(master);
 }

 if (cs->count > ARRAY_SIZE(helper))
  kvfree(helpers);
 return ret;
}
