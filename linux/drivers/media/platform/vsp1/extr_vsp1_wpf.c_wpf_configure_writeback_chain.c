
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int index; TYPE_1__* vsp1; } ;
struct vsp1_rwpf {TYPE_2__ entity; int dlm; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int VI6_WPF_WRBCK_CTRL (unsigned int) ;
 int dev_err (int ,char*) ;
 int vsp1_dl_body_write (struct vsp1_dl_body*,int ,int ) ;
 int vsp1_dl_list_add_chain (struct vsp1_dl_list*,struct vsp1_dl_list*) ;
 struct vsp1_dl_list* vsp1_dl_list_get (int ) ;
 struct vsp1_dl_body* vsp1_dl_list_get_body0 (struct vsp1_dl_list*) ;

__attribute__((used)) static int wpf_configure_writeback_chain(struct vsp1_rwpf *wpf,
      struct vsp1_dl_list *dl)
{
 unsigned int index = wpf->entity.index;
 struct vsp1_dl_list *dl_next;
 struct vsp1_dl_body *dlb;

 dl_next = vsp1_dl_list_get(wpf->dlm);
 if (!dl_next) {
  dev_err(wpf->entity.vsp1->dev,
   "Failed to obtain a dl list, disabling writeback\n");
  return -ENOMEM;
 }

 dlb = vsp1_dl_list_get_body0(dl_next);
 vsp1_dl_body_write(dlb, VI6_WPF_WRBCK_CTRL(index), 0);
 vsp1_dl_list_add_chain(dl, dl_next);

 return 0;
}
