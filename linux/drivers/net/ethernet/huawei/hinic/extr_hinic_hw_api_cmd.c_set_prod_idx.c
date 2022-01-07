
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int chain_type; int prod_idx; struct hinic_hwif* hwif; } ;
typedef enum hinic_api_cmd_chain_type { ____Placeholder_hinic_api_cmd_chain_type } hinic_api_cmd_chain_type ;


 int HINIC_API_CMD_PI_CLEAR (int ,int ) ;
 int HINIC_API_CMD_PI_SET (int ,int ) ;
 int HINIC_CSR_API_CMD_CHAIN_PI_ADDR (int) ;
 int IDX ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int ,int ) ;

__attribute__((used)) static void set_prod_idx(struct hinic_api_cmd_chain *chain)
{
 enum hinic_api_cmd_chain_type chain_type = chain->chain_type;
 struct hinic_hwif *hwif = chain->hwif;
 u32 addr, prod_idx;

 addr = HINIC_CSR_API_CMD_CHAIN_PI_ADDR(chain_type);
 prod_idx = hinic_hwif_read_reg(hwif, addr);

 prod_idx = HINIC_API_CMD_PI_CLEAR(prod_idx, IDX);

 prod_idx |= HINIC_API_CMD_PI_SET(chain->prod_idx, IDX);

 hinic_hwif_write_reg(hwif, addr, prod_idx);
}
