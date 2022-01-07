
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {int force_dirty; unsigned int control_cnt; scalar_t__ state_pipeline_config; struct pvr2_ctrl* controls; } ;
struct pvr2_ctrl {TYPE_1__* info; } ;
typedef int buf ;
struct TYPE_2__ {int type; int (* get_value ) (struct pvr2_ctrl*,int*) ;int name; int (* is_dirty ) (struct pvr2_ctrl*) ;} ;


 int PVR2_TRACE_CTL ;
 int get_ctrl_typename (int ) ;
 int pvr2_ctrl_value_to_sym_internal (struct pvr2_ctrl*,int ,int,char*,int,unsigned int*) ;
 int pvr2_hdw_state_sched (struct pvr2_hdw*) ;
 int pvr2_trace (int,char*,unsigned int,char*) ;
 int pvrusb2_debug ;
 unsigned int scnprintf (char*,int,char*,int ) ;
 int stub1 (struct pvr2_ctrl*) ;
 int stub2 (struct pvr2_ctrl*,int*) ;
 int trace_stbit (char*,scalar_t__) ;

__attribute__((used)) static int pvr2_hdw_commit_setup(struct pvr2_hdw *hdw)
{
 unsigned int idx;
 struct pvr2_ctrl *cptr;
 int value;
 int commit_flag = hdw->force_dirty;
 char buf[100];
 unsigned int bcnt,ccnt;

 for (idx = 0; idx < hdw->control_cnt; idx++) {
  cptr = hdw->controls + idx;
  if (!cptr->info->is_dirty) continue;
  if (!cptr->info->is_dirty(cptr)) continue;
  commit_flag = !0;

  if (!(pvrusb2_debug & PVR2_TRACE_CTL)) continue;
  bcnt = scnprintf(buf,sizeof(buf),"\"%s\" <-- ",
     cptr->info->name);
  value = 0;
  cptr->info->get_value(cptr,&value);
  pvr2_ctrl_value_to_sym_internal(cptr,~0,value,
      buf+bcnt,
      sizeof(buf)-bcnt,&ccnt);
  bcnt += ccnt;
  bcnt += scnprintf(buf+bcnt,sizeof(buf)-bcnt," <%s>",
      get_ctrl_typename(cptr->info->type));
  pvr2_trace(PVR2_TRACE_CTL,
      "/*--TRACE_COMMIT--*/ %.*s",
      bcnt,buf);
 }

 if (!commit_flag) {

  return 0;
 }

 hdw->state_pipeline_config = 0;
 trace_stbit("state_pipeline_config",hdw->state_pipeline_config);
 pvr2_hdw_state_sched(hdw);

 return !0;
}
