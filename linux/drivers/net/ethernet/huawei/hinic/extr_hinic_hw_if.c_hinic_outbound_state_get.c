
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
typedef enum hinic_outbound_state { ____Placeholder_hinic_outbound_state } hinic_outbound_state ;


 int HINIC_CSR_FUNC_ATTR4_ADDR ;
 int HINIC_FA4_GET (int ,int ) ;
 int OUTBOUND_STATE ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;

enum hinic_outbound_state hinic_outbound_state_get(struct hinic_hwif *hwif)
{
 u32 attr4 = hinic_hwif_read_reg(hwif, HINIC_CSR_FUNC_ATTR4_ADDR);

 return HINIC_FA4_GET(attr4, OUTBOUND_STATE);
}
