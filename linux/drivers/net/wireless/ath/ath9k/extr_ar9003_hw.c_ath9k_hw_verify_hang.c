
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_DMADBG_4 ;
 int AR_DMADBG_5 ;
 int AR_DMADBG_6 ;
 int NUM_STATUS_READS ;
 int REG_READ (struct ath_hw*,int ) ;
 int RESET ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,unsigned int) ;

__attribute__((used)) static bool ath9k_hw_verify_hang(struct ath_hw *ah, unsigned int queue)
{
 u32 dma_dbg_chain, dma_dbg_complete;
 u8 dcu_chain_state, dcu_complete_state;
 int i;

 for (i = 0; i < NUM_STATUS_READS; i++) {
  if (queue < 6)
   dma_dbg_chain = REG_READ(ah, AR_DMADBG_4);
  else
   dma_dbg_chain = REG_READ(ah, AR_DMADBG_5);

  dma_dbg_complete = REG_READ(ah, AR_DMADBG_6);

  dcu_chain_state = (dma_dbg_chain >> (5 * queue)) & 0x1f;
  dcu_complete_state = dma_dbg_complete & 0x3;

  if ((dcu_chain_state != 0x6) || (dcu_complete_state != 0x1))
   return 0;
 }

 ath_dbg(ath9k_hw_common(ah), RESET,
  "MAC Hang signature found for queue: %d\n", queue);

 return 1;
}
