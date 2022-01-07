
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_manager {int index; int queued; struct vsp1_device* vsp1; } ;
struct vsp1_device {int dummy; } ;


 int VI6_CMD (int ) ;
 int VI6_CMD_UPDHDR ;
 int vsp1_read (struct vsp1_device*,int ) ;

__attribute__((used)) static bool vsp1_dl_list_hw_update_pending(struct vsp1_dl_manager *dlm)
{
 struct vsp1_device *vsp1 = dlm->vsp1;

 if (!dlm->queued)
  return 0;





 return !!(vsp1_read(vsp1, VI6_CMD(dlm->index)) & VI6_CMD_UPDHDR);
}
