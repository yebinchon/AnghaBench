
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocelot {int dummy; } ;


 int ANA_TABLES_VLANACCESS_CMD_IDLE ;
 int ANA_TABLES_VLANACCESS_VLAN_TBL_CMD_M ;
 int TABLE_UPDATE_SLEEP_US ;
 int TABLE_UPDATE_TIMEOUT_US ;
 int ocelot_vlant_read_vlanaccess ;
 int readx_poll_timeout (int ,struct ocelot*,int,int,int ,int ) ;

__attribute__((used)) static inline int ocelot_vlant_wait_for_completion(struct ocelot *ocelot)
{
 u32 val;

 return readx_poll_timeout(ocelot_vlant_read_vlanaccess,
  ocelot,
  val,
  (val & ANA_TABLES_VLANACCESS_VLAN_TBL_CMD_M) ==
  ANA_TABLES_VLANACCESS_CMD_IDLE,
  TABLE_UPDATE_SLEEP_US, TABLE_UPDATE_TIMEOUT_US);
}
