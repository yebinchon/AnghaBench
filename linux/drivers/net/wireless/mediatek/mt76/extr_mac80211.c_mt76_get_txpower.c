
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int txpower_cur; int antenna_mask; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt76_dev* priv; } ;


 int DIV_ROUND_UP (int ,int) ;
 int hweight8 (int ) ;

int mt76_get_txpower(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
       int *dbm)
{
 struct mt76_dev *dev = hw->priv;
 int n_chains = hweight8(dev->antenna_mask);

 *dbm = DIV_ROUND_UP(dev->txpower_cur, 2);




 switch (n_chains) {
 case 4:
  *dbm += 6;
  break;
 case 3:
  *dbm += 4;
  break;
 case 2:
  *dbm += 3;
  break;
 default:
  break;
 }

 return 0;
}
