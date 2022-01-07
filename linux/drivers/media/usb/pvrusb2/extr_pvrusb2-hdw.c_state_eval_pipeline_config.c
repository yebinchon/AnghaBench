
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ state_pipeline_pause; scalar_t__ state_pipeline_config; } ;


 int pvr2_hdw_commit_execute (struct pvr2_hdw*) ;

__attribute__((used)) static int state_eval_pipeline_config(struct pvr2_hdw *hdw)
{
 if (hdw->state_pipeline_config ||
     hdw->state_pipeline_pause) return 0;
 pvr2_hdw_commit_execute(hdw);
 return !0;
}
