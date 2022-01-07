
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
typedef enum hinic_db_state { ____Placeholder_hinic_db_state } hinic_db_state ;


 int DB_STATE ;
 int HINIC_CSR_FUNC_ATTR4_ADDR ;
 int HINIC_FA4_GET (int ,int ) ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;

enum hinic_db_state hinic_db_state_get(struct hinic_hwif *hwif)
{
 u32 attr4 = hinic_hwif_read_reg(hwif, HINIC_CSR_FUNC_ATTR4_ADDR);

 return HINIC_FA4_GET(attr4, DB_STATE);
}
