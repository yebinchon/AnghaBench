
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bfa_iocpf {int dummy; } ;
struct bfa_ioc {int port_mode; int port_mode_cfg; int ad_cap_bm; struct bfa_iocpf iocpf; } ;
typedef enum bfa_mode { ____Placeholder_bfa_mode } bfa_mode ;


 int IOCPF_E_FWRSP_ENABLE ;
 int bfa_fsm_send_event (struct bfa_iocpf*,int ) ;

__attribute__((used)) static void
bfa_ioc_enable_reply(struct bfa_ioc *ioc, enum bfa_mode port_mode,
   u8 cap_bm)
{
 struct bfa_iocpf *iocpf = &ioc->iocpf;

 ioc->port_mode = ioc->port_mode_cfg = port_mode;
 ioc->ad_cap_bm = cap_bm;
 bfa_fsm_send_event(iocpf, IOCPF_E_FWRSP_ENABLE);
}
