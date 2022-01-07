
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpsw_slave {int mac_sl; int * phy; int slave_num; } ;
struct cpsw_common {int ale; } ;


 int ALE_PORT_STATE ;
 int ALE_PORT_STATE_DISABLE ;
 int cpsw_ale_control_set (int ,int ,int ,int ) ;
 int cpsw_get_slave_port (int ) ;
 int cpsw_sl_ctl_reset (int ) ;
 int cpsw_sl_reset (int ,int) ;
 int phy_disconnect (int *) ;
 int phy_stop (int *) ;

__attribute__((used)) static void cpsw_slave_stop(struct cpsw_slave *slave, struct cpsw_common *cpsw)
{
 u32 slave_port;

 slave_port = cpsw_get_slave_port(slave->slave_num);

 if (!slave->phy)
  return;
 phy_stop(slave->phy);
 phy_disconnect(slave->phy);
 slave->phy = ((void*)0);
 cpsw_ale_control_set(cpsw->ale, slave_port,
        ALE_PORT_STATE, ALE_PORT_STATE_DISABLE);
 cpsw_sl_reset(slave->mac_sl, 100);
 cpsw_sl_ctl_reset(slave->mac_sl);
}
