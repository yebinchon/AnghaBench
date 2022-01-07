
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_Q_TXE ;
 int QUEUE ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int) ;

void ath9k_hw_txstart(struct ath_hw *ah, u32 q)
{
 ath_dbg(ath9k_hw_common(ah), QUEUE, "Enable TXE on queue: %u\n", q);
 REG_WRITE(ah, AR_Q_TXE, 1 << q);
}
