
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PI_UINT32 ;
typedef int DFX_board_t ;


 int PI_PDQ_K_REG_PORT_STATUS ;
 int PI_PSTATUS_M_STATE ;
 int PI_PSTATUS_V_STATE ;
 int dfx_port_read_long (int *,int ,int*) ;

__attribute__((used)) static int dfx_hw_adap_state_rd(DFX_board_t *bp)
 {
 PI_UINT32 port_status;

 dfx_port_read_long(bp, PI_PDQ_K_REG_PORT_STATUS, &port_status);
 return (port_status & PI_PSTATUS_M_STATE) >> PI_PSTATUS_V_STATE;
 }
