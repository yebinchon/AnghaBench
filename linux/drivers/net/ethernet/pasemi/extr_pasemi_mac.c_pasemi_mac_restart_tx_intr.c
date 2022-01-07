
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pasemi_mac {int dummy; } ;
struct TYPE_3__ {unsigned int* status; int chno; } ;
struct TYPE_4__ {TYPE_1__ chan; } ;


 int PAS_IOB_DMA_TXCH_RESET (int ) ;
 unsigned int PAS_IOB_DMA_TXCH_RESET_PCNT (unsigned int) ;
 unsigned int PAS_IOB_DMA_TXCH_RESET_PINTC ;
 unsigned int PAS_STATUS_PCNT_M ;
 TYPE_2__* tx_ring (struct pasemi_mac const*) ;
 int write_iob_reg (int ,unsigned int) ;

__attribute__((used)) static void pasemi_mac_restart_tx_intr(const struct pasemi_mac *mac)
{
 unsigned int reg, pcnt;


 pcnt = *tx_ring(mac)->chan.status & PAS_STATUS_PCNT_M;

 reg = PAS_IOB_DMA_TXCH_RESET_PCNT(pcnt) | PAS_IOB_DMA_TXCH_RESET_PINTC;

 write_iob_reg(PAS_IOB_DMA_TXCH_RESET(tx_ring(mac)->chan.chno), reg);
}
