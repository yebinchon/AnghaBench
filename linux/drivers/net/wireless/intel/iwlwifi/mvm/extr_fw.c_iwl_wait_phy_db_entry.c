
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmd; } ;
struct iwl_rx_packet {TYPE_1__ hdr; } ;
struct iwl_phy_db {int dummy; } ;
struct iwl_notif_wait_data {int dummy; } ;


 scalar_t__ CALIB_RES_NOTIF_PHY_DB ;
 scalar_t__ INIT_COMPLETE_NOTIF ;
 int WARN_ON (int) ;
 int iwl_phy_db_set_section (struct iwl_phy_db*,struct iwl_rx_packet*) ;

__attribute__((used)) static bool iwl_wait_phy_db_entry(struct iwl_notif_wait_data *notif_wait,
      struct iwl_rx_packet *pkt, void *data)
{
 struct iwl_phy_db *phy_db = data;

 if (pkt->hdr.cmd != CALIB_RES_NOTIF_PHY_DB) {
  WARN_ON(pkt->hdr.cmd != INIT_COMPLETE_NOTIF);
  return 1;
 }

 WARN_ON(iwl_phy_db_set_section(phy_db, pkt));

 return 0;
}
