
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PI_UINT32 ;
typedef int DFX_board_t ;


 int DFX_K_HW_TIMEOUT ;
 int DFX_K_SUCCESS ;
 int PI_PCTRL_M_BLAST_FLASH ;
 int PI_PCTRL_M_CMD_ERROR ;
 int PI_PDQ_K_REG_HOST_DATA ;
 int PI_PDQ_K_REG_PORT_CTRL ;
 int PI_PDQ_K_REG_PORT_DATA_A ;
 int PI_PDQ_K_REG_PORT_DATA_B ;
 int dfx_port_read_long (int *,int ,int*) ;
 int dfx_port_write_long (int *,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int dfx_hw_port_ctrl_req(
 DFX_board_t *bp,
 PI_UINT32 command,
 PI_UINT32 data_a,
 PI_UINT32 data_b,
 PI_UINT32 *host_data
 )

 {
 PI_UINT32 port_cmd;
 int timeout_cnt;



 port_cmd = (PI_UINT32) (command | PI_PCTRL_M_CMD_ERROR);



 dfx_port_write_long(bp, PI_PDQ_K_REG_PORT_DATA_A, data_a);
 dfx_port_write_long(bp, PI_PDQ_K_REG_PORT_DATA_B, data_b);
 dfx_port_write_long(bp, PI_PDQ_K_REG_PORT_CTRL, port_cmd);



 if (command == PI_PCTRL_M_BLAST_FLASH)
  timeout_cnt = 600000;
 else
  timeout_cnt = 20000;

 for (; timeout_cnt > 0; timeout_cnt--)
  {
  dfx_port_read_long(bp, PI_PDQ_K_REG_PORT_CTRL, &port_cmd);
  if (!(port_cmd & PI_PCTRL_M_CMD_ERROR))
   break;
  udelay(100);
  }
 if (timeout_cnt == 0)
  return DFX_K_HW_TIMEOUT;







 if (host_data != ((void*)0))
  dfx_port_read_long(bp, PI_PDQ_K_REG_HOST_DATA, host_data);
 return DFX_K_SUCCESS;
 }
