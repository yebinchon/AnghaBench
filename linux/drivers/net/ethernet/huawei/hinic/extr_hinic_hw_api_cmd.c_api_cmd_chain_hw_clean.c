
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int chain_type; struct hinic_hwif* hwif; } ;


 int AEQE_EN ;
 int CELL_SIZE ;
 int HINIC_API_CMD_CHAIN_CTRL_CLEAR (int,int ) ;
 int HINIC_CSR_API_CMD_CHAIN_CTRL_ADDR (int ) ;
 int RESTART_WB_STAT ;
 int XOR_CHK_EN ;
 int XOR_ERR ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int,int) ;

__attribute__((used)) static void api_cmd_chain_hw_clean(struct hinic_api_cmd_chain *chain)
{
 struct hinic_hwif *hwif = chain->hwif;
 u32 addr, ctrl;

 addr = HINIC_CSR_API_CMD_CHAIN_CTRL_ADDR(chain->chain_type);

 ctrl = hinic_hwif_read_reg(hwif, addr);
 ctrl = HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, RESTART_WB_STAT) &
        HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, XOR_ERR) &
        HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, AEQE_EN) &
        HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, XOR_CHK_EN) &
        HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, CELL_SIZE);

 hinic_hwif_write_reg(hwif, addr, ctrl);
}
