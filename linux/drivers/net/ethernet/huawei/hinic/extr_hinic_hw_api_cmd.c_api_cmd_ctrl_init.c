
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int cell_size; int chain_type; struct hinic_hwif* hwif; } ;


 int AEQE_EN ;
 int API_CMD_CELL_SIZE_VAL (int ) ;
 int CELL_SIZE ;
 int HINIC_API_CMD_CHAIN_CTRL_CLEAR (int,int ) ;
 int HINIC_API_CMD_CHAIN_CTRL_SET (int,int ) ;
 int HINIC_CSR_API_CMD_CHAIN_CTRL_ADDR (int ) ;
 int RESTART_WB_STAT ;
 int XOR_CHK_ALL ;
 int XOR_CHK_EN ;
 int XOR_ERR ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int,int) ;

__attribute__((used)) static void api_cmd_ctrl_init(struct hinic_api_cmd_chain *chain)
{
 struct hinic_hwif *hwif = chain->hwif;
 u32 addr, ctrl;
 u16 cell_size;


 addr = HINIC_CSR_API_CMD_CHAIN_CTRL_ADDR(chain->chain_type);

 cell_size = API_CMD_CELL_SIZE_VAL(chain->cell_size);

 ctrl = hinic_hwif_read_reg(hwif, addr);

 ctrl = HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, RESTART_WB_STAT) &
  HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, XOR_ERR) &
  HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, AEQE_EN) &
  HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, XOR_CHK_EN) &
  HINIC_API_CMD_CHAIN_CTRL_CLEAR(ctrl, CELL_SIZE);

 ctrl |= HINIC_API_CMD_CHAIN_CTRL_SET(1, XOR_ERR) |
  HINIC_API_CMD_CHAIN_CTRL_SET(XOR_CHK_ALL, XOR_CHK_EN) |
  HINIC_API_CMD_CHAIN_CTRL_SET(cell_size, CELL_SIZE);

 hinic_hwif_write_reg(hwif, addr, ctrl);
}
