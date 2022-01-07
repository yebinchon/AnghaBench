
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int wb_status_paddr; int chain_type; struct hinic_hwif* hwif; } ;


 int HINIC_CSR_API_CMD_STATUS_HI_ADDR (int ) ;
 int HINIC_CSR_API_CMD_STATUS_LO_ADDR (int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int ,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void api_cmd_set_status_addr(struct hinic_api_cmd_chain *chain)
{
 struct hinic_hwif *hwif = chain->hwif;
 u32 addr, val;

 addr = HINIC_CSR_API_CMD_STATUS_HI_ADDR(chain->chain_type);
 val = upper_32_bits(chain->wb_status_paddr);
 hinic_hwif_write_reg(hwif, addr, val);

 addr = HINIC_CSR_API_CMD_STATUS_LO_ADDR(chain->chain_type);
 val = lower_32_bits(chain->wb_status_paddr);
 hinic_hwif_write_reg(hwif, addr, val);
}
