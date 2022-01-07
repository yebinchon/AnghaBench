
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_manager {struct vsp1_dl_list* active; } ;
struct vsp1_dl_list {struct vsp1_dl_manager* dlm; } ;


 int vsp1_dl_list_hw_enqueue (struct vsp1_dl_list*) ;

__attribute__((used)) static void vsp1_dl_list_commit_singleshot(struct vsp1_dl_list *dl)
{
 struct vsp1_dl_manager *dlm = dl->dlm;






 vsp1_dl_list_hw_enqueue(dl);

 dlm->active = dl;
}
