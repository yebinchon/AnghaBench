
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {scalar_t__ session_type; int delayed_process_work; int delayed_process; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ VIDC_SESSION_TYPE_DEC ;
 int delayed_process_buf_func ;

void venus_helper_init_instance(struct venus_inst *inst)
{
 if (inst->session_type == VIDC_SESSION_TYPE_DEC) {
  INIT_LIST_HEAD(&inst->delayed_process);
  INIT_WORK(&inst->delayed_process_work,
     delayed_process_buf_func);
 }
}
