
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ar9170* priv; } ;
struct ar9170 {int tx_total_queued; } ;


 int atomic_read (int *) ;

__attribute__((used)) static bool carl9170_tx_frames_pending(struct ieee80211_hw *hw)
{
 struct ar9170 *ar = hw->priv;

 return !!atomic_read(&ar->tx_total_queued);
}
