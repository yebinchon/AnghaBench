
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int p54u_init_urbs (struct ieee80211_hw*) ;

__attribute__((used)) static int p54u_open(struct ieee80211_hw *dev)
{





 return p54u_init_urbs(dev);
}
