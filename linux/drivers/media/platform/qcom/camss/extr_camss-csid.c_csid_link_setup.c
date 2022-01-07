
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_format {int which; int pad; int member_0; } ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {int dummy; } ;
struct csiphy_lanes_cfg {int num_data; } ;
struct TYPE_9__ {TYPE_3__* csi2; } ;
struct csiphy_device {TYPE_4__ cfg; int id; } ;
struct TYPE_10__ {int lane_assign; int lane_cnt; int csiphy_id; } ;
struct csid_device {int subdev; TYPE_5__ phy; TYPE_2__* testgen_mode; } ;
struct TYPE_8__ {struct csiphy_lanes_cfg lane_cfg; } ;
struct TYPE_6__ {scalar_t__ val; } ;
struct TYPE_7__ {TYPE_1__ cur; } ;


 int EBUSY ;
 int EPERM ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_PAD_FL_SINK ;
 int MSM_CSID_PAD_SRC ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int csid_get_lane_assign (struct csiphy_lanes_cfg*) ;
 int csid_set_format (int *,int *,struct v4l2_subdev_format*) ;
 scalar_t__ media_entity_remote_pad (struct media_pad const*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 void* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csid_link_setup(struct media_entity *entity,
      const struct media_pad *local,
      const struct media_pad *remote, u32 flags)
{
 if (flags & MEDIA_LNK_FL_ENABLED)
  if (media_entity_remote_pad(local))
   return -EBUSY;

 if ((local->flags & MEDIA_PAD_FL_SINK) &&
     (flags & MEDIA_LNK_FL_ENABLED)) {
  struct v4l2_subdev *sd;
  struct csid_device *csid;
  struct csiphy_device *csiphy;
  struct csiphy_lanes_cfg *lane_cfg;
  struct v4l2_subdev_format format = { 0 };

  sd = media_entity_to_v4l2_subdev(entity);
  csid = v4l2_get_subdevdata(sd);



  if (csid->testgen_mode->cur.val != 0)
   return -EBUSY;

  sd = media_entity_to_v4l2_subdev(remote->entity);
  csiphy = v4l2_get_subdevdata(sd);



  if (!csiphy->cfg.csi2)
   return -EPERM;

  csid->phy.csiphy_id = csiphy->id;

  lane_cfg = &csiphy->cfg.csi2->lane_cfg;
  csid->phy.lane_cnt = lane_cfg->num_data;
  csid->phy.lane_assign = csid_get_lane_assign(lane_cfg);


  format.pad = MSM_CSID_PAD_SRC;
  format.which = V4L2_SUBDEV_FORMAT_ACTIVE;
  csid_set_format(&csid->subdev, ((void*)0), &format);
 }

 return 0;
}
