
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {TYPE_3__* ops; } ;
struct routing_scheme {size_t cnt; int * def; } ;
struct pvr2_hdw {size_t input_val; TYPE_1__* hdw_desc; scalar_t__ force_dirty; scalar_t__ input_dirty; } ;
struct TYPE_6__ {TYPE_2__* audio; } ;
struct TYPE_5__ {int (* s_routing ) (struct v4l2_subdev*,int ,int ,int ) ;} ;
struct TYPE_4__ {unsigned int signal_routing_scheme; } ;


 unsigned int ARRAY_SIZE (struct routing_scheme**) ;
 int PVR2_TRACE_CHIPS ;
 int PVR2_TRACE_ERROR_LEGS ;
 int pvr2_trace (int ,char*,unsigned int,...) ;
 struct routing_scheme** routing_schemes ;
 int stub1 (struct v4l2_subdev*,int ,int ,int ) ;

void pvr2_cs53l32a_subdev_update(struct pvr2_hdw *hdw, struct v4l2_subdev *sd)
{
 if (hdw->input_dirty || hdw->force_dirty) {
  const struct routing_scheme *sp;
  unsigned int sid = hdw->hdw_desc->signal_routing_scheme;
  u32 input;
  pvr2_trace(PVR2_TRACE_CHIPS, "subdev v4l2 set_input(%d)",
      hdw->input_val);
  sp = (sid < ARRAY_SIZE(routing_schemes)) ?
   routing_schemes[sid] : ((void*)0);
  if ((sp == ((void*)0)) ||
      (hdw->input_val < 0) ||
      (hdw->input_val >= sp->cnt)) {
   pvr2_trace(PVR2_TRACE_ERROR_LEGS,
       "*** WARNING *** subdev v4l2 set_input: Invalid routing scheme (%u) and/or input (%d)",
       sid, hdw->input_val);
   return;
  }
  input = sp->def[hdw->input_val];
  sd->ops->audio->s_routing(sd, input, 0, 0);
 }
}
