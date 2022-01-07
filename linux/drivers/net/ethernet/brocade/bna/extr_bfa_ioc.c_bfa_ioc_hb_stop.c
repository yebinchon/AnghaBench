
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int hb_timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static void
bfa_ioc_hb_stop(struct bfa_ioc *ioc)
{
 del_timer(&ioc->hb_timer);
}
