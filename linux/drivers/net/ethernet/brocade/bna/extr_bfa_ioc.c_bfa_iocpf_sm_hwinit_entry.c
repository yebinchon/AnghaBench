
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {int ioc; scalar_t__ poll_time; } ;


 int bfa_ioc_reset (int ,int) ;

__attribute__((used)) static void
bfa_iocpf_sm_hwinit_entry(struct bfa_iocpf *iocpf)
{
 iocpf->poll_time = 0;
 bfa_ioc_reset(iocpf->ioc, 0);
}
