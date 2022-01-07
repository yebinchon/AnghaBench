
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocelot {int dummy; } ;


 int ANA_TABLES_MACACCESS_MAC_TABLE_CMD_M ;
 int MACACCESS_CMD_IDLE ;
 int TABLE_UPDATE_SLEEP_US ;
 int TABLE_UPDATE_TIMEOUT_US ;
 int ocelot_mact_read_macaccess ;
 int readx_poll_timeout (int ,struct ocelot*,int,int,int ,int ) ;

__attribute__((used)) static inline int ocelot_mact_wait_for_completion(struct ocelot *ocelot)
{
 u32 val;

 return readx_poll_timeout(ocelot_mact_read_macaccess,
  ocelot, val,
  (val & ANA_TABLES_MACACCESS_MAC_TABLE_CMD_M) ==
  MACACCESS_CMD_IDLE,
  TABLE_UPDATE_SLEEP_US, TABLE_UPDATE_TIMEOUT_US);
}
