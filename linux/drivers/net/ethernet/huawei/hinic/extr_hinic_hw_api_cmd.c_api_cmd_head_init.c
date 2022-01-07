
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int head_cell_paddr; int chain_type; struct hinic_hwif* hwif; } ;


 int HINIC_CSR_API_CMD_CHAIN_HEAD_HI_ADDR (int ) ;
 int HINIC_CSR_API_CMD_CHAIN_HEAD_LO_ADDR (int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int ,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void api_cmd_head_init(struct hinic_api_cmd_chain *chain)
{
 struct hinic_hwif *hwif = chain->hwif;
 u32 addr, val;

 addr = HINIC_CSR_API_CMD_CHAIN_HEAD_HI_ADDR(chain->chain_type);
 val = upper_32_bits(chain->head_cell_paddr);
 hinic_hwif_write_reg(hwif, addr, val);

 addr = HINIC_CSR_API_CMD_CHAIN_HEAD_LO_ADDR(chain->chain_type);
 val = lower_32_bits(chain->head_cell_paddr);
 hinic_hwif_write_reg(hwif, addr, val);
}
