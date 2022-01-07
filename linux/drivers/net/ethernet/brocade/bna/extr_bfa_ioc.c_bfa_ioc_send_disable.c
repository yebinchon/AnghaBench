
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_ctrl_req {int tv_sec; void* rsvd; void* clscode; int mh; } ;
struct bfa_ioc {int clscode; } ;


 int BFI_IOC_H2I_DISABLE_REQ ;
 int BFI_MC_IOC ;
 int bfa_ioc_mbox_send (struct bfa_ioc*,struct bfi_ioc_ctrl_req*,int) ;
 int bfa_ioc_portid (struct bfa_ioc*) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 void* htons (int ) ;
 int ktime_get_real_seconds () ;
 int ntohl (int ) ;

__attribute__((used)) static void
bfa_ioc_send_disable(struct bfa_ioc *ioc)
{
 struct bfi_ioc_ctrl_req disable_req;

 bfi_h2i_set(disable_req.mh, BFI_MC_IOC, BFI_IOC_H2I_DISABLE_REQ,
      bfa_ioc_portid(ioc));
 disable_req.clscode = htons(ioc->clscode);
 disable_req.rsvd = htons(0);

 disable_req.tv_sec = ntohl(ktime_get_real_seconds());
 bfa_ioc_mbox_send(ioc, &disable_req, sizeof(struct bfi_ioc_ctrl_req));
}
