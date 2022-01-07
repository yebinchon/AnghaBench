
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int conf_mutex; int coverage_class; } ;
struct ieee80211_hw {struct p54_common* priv; } ;
typedef int s16 ;


 int clamp_t (int ,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54_set_edcf (struct p54_common*) ;
 int u8 ;

__attribute__((used)) static void p54_set_coverage_class(struct ieee80211_hw *dev,
       s16 coverage_class)
{
 struct p54_common *priv = dev->priv;

 mutex_lock(&priv->conf_mutex);

 priv->coverage_class = clamp_t(u8, coverage_class, 0, 31);
 p54_set_edcf(priv);
 mutex_unlock(&priv->conf_mutex);
}
