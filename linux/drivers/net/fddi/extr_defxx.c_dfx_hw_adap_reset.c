
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PI_UINT32 ;
typedef int DFX_board_t ;


 int PI_PDQ_K_REG_PORT_DATA_A ;
 int PI_PDQ_K_REG_PORT_RESET ;
 int PI_RESET_M_ASSERT_RESET ;
 int dfx_port_write_long (int *,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void dfx_hw_adap_reset(
 DFX_board_t *bp,
 PI_UINT32 type
 )

 {


 dfx_port_write_long(bp, PI_PDQ_K_REG_PORT_DATA_A, type);
 dfx_port_write_long(bp, PI_PDQ_K_REG_PORT_RESET, PI_RESET_M_ASSERT_RESET);



 udelay(20);



 dfx_port_write_long(bp, PI_PDQ_K_REG_PORT_RESET, 0);
 }
