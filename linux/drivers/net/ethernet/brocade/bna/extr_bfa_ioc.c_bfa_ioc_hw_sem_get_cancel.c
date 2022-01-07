
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int sem_timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static void
bfa_ioc_hw_sem_get_cancel(struct bfa_ioc *ioc)
{
 del_timer(&ioc->sem_timer);
}
