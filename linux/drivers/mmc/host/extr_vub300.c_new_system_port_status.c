
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port_flags; } ;
struct vub300_mmc_host {int card_present; int read_only; int mmc; TYPE_2__* udev; scalar_t__* vub_name; scalar_t__ bus_width; TYPE_1__ system_port_status; } ;
struct TYPE_4__ {int dev; } ;


 int dev_info (int *,char*) ;
 scalar_t__ disable_offload_processing ;
 int mmc_detect_change (int ,int) ;
 int strncpy (scalar_t__*,char*,int) ;

__attribute__((used)) static void new_system_port_status(struct vub300_mmc_host *vub300)
{
 int old_card_present = vub300->card_present;
 int new_card_present =
  (0x0001 & vub300->system_port_status.port_flags) ? 1 : 0;
 vub300->read_only =
  (0x0010 & vub300->system_port_status.port_flags) ? 1 : 0;
 if (new_card_present && !old_card_present) {
  dev_info(&vub300->udev->dev, "card just inserted\n");
  vub300->card_present = 1;
  vub300->bus_width = 0;
  if (disable_offload_processing)
   strncpy(vub300->vub_name, "EMPTY Processing Disabled",
    sizeof(vub300->vub_name));
  else
   vub300->vub_name[0] = 0;
  mmc_detect_change(vub300->mmc, 1);
 } else if (!new_card_present && old_card_present) {
  dev_info(&vub300->udev->dev, "card just ejected\n");
  vub300->card_present = 0;
  mmc_detect_change(vub300->mmc, 0);
 } else {

 }
}
