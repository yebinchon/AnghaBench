
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
typedef enum hinic_db_state { ____Placeholder_hinic_db_state } hinic_db_state ;


 int DB_STATE ;
 int HINIC_CSR_FUNC_ATTR4_ADDR ;
 int HINIC_FA4_CLEAR (int ,int ) ;
 int HINIC_FA4_SET (int,int ) ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int ,int ) ;

void hinic_db_state_set(struct hinic_hwif *hwif,
   enum hinic_db_state db_state)
{
 u32 attr4 = hinic_hwif_read_reg(hwif, HINIC_CSR_FUNC_ATTR4_ADDR);

 attr4 = HINIC_FA4_CLEAR(attr4, DB_STATE);
 attr4 |= HINIC_FA4_SET(db_state, DB_STATE);

 hinic_hwif_write_reg(hwif, HINIC_CSR_FUNC_ATTR4_ADDR, attr4);
}
