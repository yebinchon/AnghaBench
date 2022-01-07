
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_api_cmd_chain {int hwif; int chain_type; } ;


 int CONS_IDX ;
 int HINIC_API_CMD_STATUS_GET (int ,int ) ;
 int HINIC_CSR_API_CMD_STATUS_ADDR (int ) ;
 int hinic_hwif_read_reg (int ,int ) ;

__attribute__((used)) static u32 get_hw_cons_idx(struct hinic_api_cmd_chain *chain)
{
 u32 addr, val;

 addr = HINIC_CSR_API_CMD_STATUS_ADDR(chain->chain_type);
 val = hinic_hwif_read_reg(chain->hwif, addr);

 return HINIC_API_CMD_STATUS_GET(val, CONS_IDX);
}
