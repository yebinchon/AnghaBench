
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdec_vp8_inst {int available_fb_node_list; TYPE_1__* dec_fb; int fb_disp_list; int fb_free_list; int fb_use_list; } ;
struct TYPE_2__ {int list; int * fb; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void init_list(struct vdec_vp8_inst *inst)
{
 int i;

 INIT_LIST_HEAD(&inst->available_fb_node_list);
 INIT_LIST_HEAD(&inst->fb_use_list);
 INIT_LIST_HEAD(&inst->fb_free_list);
 INIT_LIST_HEAD(&inst->fb_disp_list);

 for (i = 0; i < ARRAY_SIZE(inst->dec_fb); i++) {
  INIT_LIST_HEAD(&inst->dec_fb[i].list);
  inst->dec_fb[i].fb = ((void*)0);
  list_add_tail(&inst->dec_fb[i].list,
         &inst->available_fb_node_list);
 }
}
