
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_ioc_getattr_req {int attr_addr; int mh; } ;
struct TYPE_2__ {int pa; } ;
struct bfa_ioc {TYPE_1__ attr_dma; } ;
typedef int attr_req ;


 int BFI_IOC_H2I_GETATTR_REQ ;
 int BFI_MC_IOC ;
 int bfa_dma_be_addr_set (int ,int ) ;
 int bfa_ioc_mbox_send (struct bfa_ioc*,struct bfi_ioc_getattr_req*,int) ;
 int bfa_ioc_portid (struct bfa_ioc*) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_ioc_send_getattr(struct bfa_ioc *ioc)
{
 struct bfi_ioc_getattr_req attr_req;

 bfi_h2i_set(attr_req.mh, BFI_MC_IOC, BFI_IOC_H2I_GETATTR_REQ,
      bfa_ioc_portid(ioc));
 bfa_dma_be_addr_set(attr_req.attr_addr, ioc->attr_dma.pa);
 bfa_ioc_mbox_send(ioc, &attr_req, sizeof(attr_req));
}
