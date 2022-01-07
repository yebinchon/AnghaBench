
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl_vif {int flags; int fw_vif_idx; TYPE_1__* ar; } ;
struct TYPE_2__ {int wmi; } ;


 int CONNECTED ;
 int CONNECT_PEND ;
 int ath6kl_wmi_disconnect_cmd (int ,int ) ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void ath6kl_disconnect(struct ath6kl_vif *vif)
{
 if (test_bit(CONNECTED, &vif->flags) ||
     test_bit(CONNECT_PEND, &vif->flags)) {
  ath6kl_wmi_disconnect_cmd(vif->ar->wmi, vif->fw_vif_idx);





  clear_bit(CONNECT_PEND, &vif->flags);
 }
}
