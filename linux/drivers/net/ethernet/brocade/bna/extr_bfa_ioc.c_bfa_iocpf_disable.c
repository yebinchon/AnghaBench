
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int iocpf; } ;


 int IOCPF_E_DISABLE ;
 int bfa_fsm_send_event (int *,int ) ;

__attribute__((used)) static void
bfa_iocpf_disable(struct bfa_ioc *ioc)
{
 bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_DISABLE);
}
