
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_manager {int cmdpool; } ;
struct vsp1_dl_list {struct vsp1_dl_ext_cmd* pre_cmd; struct vsp1_dl_manager* dlm; } ;
struct vsp1_dl_ext_cmd {int dummy; } ;


 struct vsp1_dl_ext_cmd* vsp1_dl_ext_cmd_get (int ) ;

struct vsp1_dl_ext_cmd *vsp1_dl_get_pre_cmd(struct vsp1_dl_list *dl)
{
 struct vsp1_dl_manager *dlm = dl->dlm;

 if (dl->pre_cmd)
  return dl->pre_cmd;

 dl->pre_cmd = vsp1_dl_ext_cmd_get(dlm->cmdpool);

 return dl->pre_cmd;
}
