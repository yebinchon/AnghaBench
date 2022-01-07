
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct p54_common {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int P54_STATISTICS_UPDATE ;
 int WARN (unsigned int,char*) ;
 int msleep (int) ;
 scalar_t__ p54_flush_count (struct p54_common*) ;

__attribute__((used)) static void p54_flush(struct ieee80211_hw *dev, struct ieee80211_vif *vif,
        u32 queues, bool drop)
{
 struct p54_common *priv = dev->priv;
 unsigned int total, i;







 i = P54_STATISTICS_UPDATE * 2 / 20;






 while ((total = p54_flush_count(priv) && i--)) {

  msleep(20);
 }

 WARN(total, "tx flush timeout, unresponsive firmware");
}
