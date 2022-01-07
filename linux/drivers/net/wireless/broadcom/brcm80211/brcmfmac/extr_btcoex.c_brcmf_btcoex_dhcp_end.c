
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_btcoex_info {int dhcp_done; int timer_on; scalar_t__ bt_state; int work; int timer; } ;


 scalar_t__ BRCMF_BT_DHCP_IDLE ;
 int INFO ;
 int brcmf_btcoex_restore_part1 (struct brcmf_btcoex_info*) ;
 int brcmf_dbg (int ,char*,...) ;
 int del_timer_sync (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void brcmf_btcoex_dhcp_end(struct brcmf_btcoex_info *btci)
{

 btci->dhcp_done = 1;
 if (btci->timer_on) {
  brcmf_dbg(INFO, "disable BT DHCP Timer\n");
  btci->timer_on = 0;
  del_timer_sync(&btci->timer);


  if (btci->bt_state != BRCMF_BT_DHCP_IDLE) {
   brcmf_dbg(INFO, "bt_state:%d\n",
      btci->bt_state);
   schedule_work(&btci->work);
  }
 } else {

  brcmf_btcoex_restore_part1(btci);
 }
}
