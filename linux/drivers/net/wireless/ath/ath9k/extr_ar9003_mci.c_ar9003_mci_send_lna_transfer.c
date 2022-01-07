
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int MCI_LNA_TRANS ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int*,int,int,int) ;

__attribute__((used)) static void ar9003_mci_send_lna_transfer(struct ath_hw *ah, bool wait_done)
{
 u32 payload = 0x00000000;

 ar9003_mci_send_message(ah, MCI_LNA_TRANS, 0, &payload, 1,
    wait_done, 0);
}
