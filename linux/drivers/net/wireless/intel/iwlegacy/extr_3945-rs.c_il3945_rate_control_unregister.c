
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_rate_control_unregister (int *) ;
 int rs_ops ;

void
il3945_rate_control_unregister(void)
{
 ieee80211_rate_control_unregister(&rs_ops);
}
