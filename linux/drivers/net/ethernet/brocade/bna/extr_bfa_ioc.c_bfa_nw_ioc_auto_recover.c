
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfa_nw_auto_recover ;

void
bfa_nw_ioc_auto_recover(bool auto_recover)
{
 bfa_nw_auto_recover = auto_recover;
}
