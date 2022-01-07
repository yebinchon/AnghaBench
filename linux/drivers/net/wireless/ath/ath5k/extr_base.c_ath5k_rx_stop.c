
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;


 int ath5k_debug_printrxbuffs (struct ath5k_hw*) ;
 int ath5k_hw_set_rx_filter (struct ath5k_hw*,int ) ;
 int ath5k_hw_stop_rx_pcu (struct ath5k_hw*) ;

__attribute__((used)) static void
ath5k_rx_stop(struct ath5k_hw *ah)
{

 ath5k_hw_set_rx_filter(ah, 0);
 ath5k_hw_stop_rx_pcu(ah);

 ath5k_debug_printrxbuffs(ah);
}
