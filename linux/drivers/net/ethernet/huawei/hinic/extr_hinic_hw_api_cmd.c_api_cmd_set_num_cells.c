
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int num_cells; int chain_type; struct hinic_hwif* hwif; } ;


 int HINIC_CSR_API_CMD_CHAIN_NUM_CELLS_ADDR (int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int ,int ) ;

__attribute__((used)) static void api_cmd_set_num_cells(struct hinic_api_cmd_chain *chain)
{
 struct hinic_hwif *hwif = chain->hwif;
 u32 addr, val;

 addr = HINIC_CSR_API_CMD_CHAIN_NUM_CELLS_ADDR(chain->chain_type);
 val = chain->num_cells;
 hinic_hwif_write_reg(hwif, addr, val);
}
