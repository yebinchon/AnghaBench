
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_rx_packet {int data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct TYPE_3__ {int ampdu_count; } ;
struct TYPE_4__ {int phy_flags; } ;
struct iwl_mvm {int drv_stats_lock; TYPE_1__ drv_rx_stats; TYPE_2__ last_phy_info; int ampdu_ref; } ;


 int RX_RES_PHY_FLAGS_AGG ;
 int cpu_to_le16 (int ) ;
 int memcpy (TYPE_2__*,int ,int) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iwl_mvm_rx_rx_phy_cmd(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);

 memcpy(&mvm->last_phy_info, pkt->data, sizeof(mvm->last_phy_info));
 mvm->ampdu_ref++;
}
