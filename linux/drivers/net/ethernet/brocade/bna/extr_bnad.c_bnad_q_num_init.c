
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct bnad {int cfg_flags; int num_rx; int num_tx; int num_rxp_per_rx; int num_txq_per_tx; } ;


 int BNAD_CF_MSIX ;
 int BNAD_MAX_RX ;
 int BNAD_MAX_RXP_PER_RX ;
 int BNAD_TXQ_NUM ;
 int min (int ,int ) ;
 scalar_t__ num_online_cpus () ;

__attribute__((used)) static void
bnad_q_num_init(struct bnad *bnad)
{
 int rxps;

 rxps = min((uint)num_online_cpus(),
   (uint)(BNAD_MAX_RX * BNAD_MAX_RXP_PER_RX));

 if (!(bnad->cfg_flags & BNAD_CF_MSIX))
  rxps = 1;

 bnad->num_rx = 1;
 bnad->num_tx = 1;
 bnad->num_rxp_per_rx = rxps;
 bnad->num_txq_per_tx = BNAD_TXQ_NUM;
}
