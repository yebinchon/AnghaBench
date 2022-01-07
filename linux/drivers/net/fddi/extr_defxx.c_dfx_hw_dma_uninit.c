
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PI_UINT32 ;
typedef int DFX_board_t ;


 int DFX_K_HW_TIMEOUT ;
 int DFX_K_SUCCESS ;
 scalar_t__ PI_STATE_K_DMA_UNAVAIL ;
 int dfx_hw_adap_reset (int *,int ) ;
 scalar_t__ dfx_hw_adap_state_rd (int *) ;
 int udelay (int) ;

__attribute__((used)) static int dfx_hw_dma_uninit(DFX_board_t *bp, PI_UINT32 type)
 {
 int timeout_cnt;



 dfx_hw_adap_reset(bp, type);



 for (timeout_cnt = 100000; timeout_cnt > 0; timeout_cnt--)
  {
  if (dfx_hw_adap_state_rd(bp) == PI_STATE_K_DMA_UNAVAIL)
   break;
  udelay(100);
  }
 if (timeout_cnt == 0)
  return DFX_K_HW_TIMEOUT;
 return DFX_K_SUCCESS;
 }
