
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_attr {int maxfrsize; void* card_type; void* adapter_prop; } ;
struct bfa_ioc {struct bfi_ioc_attr* attr; } ;


 int IOC_E_FWRSP_GETATTR ;
 int bfa_fsm_send_event (struct bfa_ioc*,int ) ;
 void* ntohl (void*) ;
 int ntohs (int ) ;

__attribute__((used)) static void
bfa_ioc_getattr_reply(struct bfa_ioc *ioc)
{
 struct bfi_ioc_attr *attr = ioc->attr;

 attr->adapter_prop = ntohl(attr->adapter_prop);
 attr->card_type = ntohl(attr->card_type);
 attr->maxfrsize = ntohs(attr->maxfrsize);

 bfa_fsm_send_event(ioc, IOC_E_FWRSP_GETATTR);
}
