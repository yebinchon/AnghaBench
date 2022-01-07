
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int rx_pending; int tx_pending; int ani_tasklet; int beacontq; int txtq; int rxtq; } ;


 int tasklet_kill (int *) ;

__attribute__((used)) static void ath5k_stop_tasklets(struct ath5k_hw *ah)
{
 ah->rx_pending = 0;
 ah->tx_pending = 0;
 tasklet_kill(&ah->rxtq);
 tasklet_kill(&ah->txtq);
 tasklet_kill(&ah->beacontq);
 tasklet_kill(&ah->ani_tasklet);
}
