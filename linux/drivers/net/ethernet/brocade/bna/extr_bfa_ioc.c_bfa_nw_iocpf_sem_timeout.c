
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dummy; } ;


 int bfa_ioc_hw_sem_get (struct bfa_ioc*) ;

void
bfa_nw_iocpf_sem_timeout(struct bfa_ioc *ioc)
{
 bfa_ioc_hw_sem_get(ioc);
}
