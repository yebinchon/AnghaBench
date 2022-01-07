
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_rate_control_unregister (int *) ;
 int rs_4965_ops ;

void
il4965_rate_control_unregister(void)
{
 ieee80211_rate_control_unregister(&rs_4965_ops);
}
