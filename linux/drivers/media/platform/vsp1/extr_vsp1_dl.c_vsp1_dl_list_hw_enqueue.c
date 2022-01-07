
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_manager {int index; struct vsp1_device* vsp1; } ;
struct vsp1_dl_list {int dma; struct vsp1_dl_manager* dlm; } ;
struct vsp1_device {int dummy; } ;


 int VI6_DL_HDR_ADDR (int ) ;
 int vsp1_write (struct vsp1_device*,int ,int ) ;

__attribute__((used)) static void vsp1_dl_list_hw_enqueue(struct vsp1_dl_list *dl)
{
 struct vsp1_dl_manager *dlm = dl->dlm;
 struct vsp1_device *vsp1 = dlm->vsp1;
 vsp1_write(vsp1, VI6_DL_HDR_ADDR(dlm->index), dl->dma);
}
