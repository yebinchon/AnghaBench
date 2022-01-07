
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hc_status_block_sm {int igu_sb_id; int igu_seg_id; int timer_value; int time_to_expire; } ;



__attribute__((used)) static void bnx2x_setup_ndsb_state_machine(struct hc_status_block_sm *hc_sm,
        int igu_sb_id, int igu_seg_id)
{
 hc_sm->igu_sb_id = igu_sb_id;
 hc_sm->igu_seg_id = igu_seg_id;
 hc_sm->timer_value = 0xFF;
 hc_sm->time_to_expire = 0xFFFFFFFF;
}
