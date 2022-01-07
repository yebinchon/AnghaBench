
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip_rev; int pcifn; int device_id; } ;
struct bfa_ioc_attr {TYPE_1__ pci_attr; int def_fn; int adapter_attr; int ioc_type; int cap_bm; int port_mode_cfg; int port_mode; int port_id; int state; } ;
struct bfa_ioc {int ad_cap_bm; int port_mode_cfg; int port_mode; } ;


 int bfa_ioc_devid (struct bfa_ioc*) ;
 int bfa_ioc_get_adapter_attr (struct bfa_ioc*,int *) ;
 int bfa_ioc_get_pci_chip_rev (struct bfa_ioc*,int ) ;
 int bfa_ioc_get_state (struct bfa_ioc*) ;
 int bfa_ioc_get_type (struct bfa_ioc*) ;
 int bfa_ioc_is_default (struct bfa_ioc*) ;
 int bfa_ioc_pcifn (struct bfa_ioc*) ;
 int bfa_ioc_portid (struct bfa_ioc*) ;
 int memset (void*,int ,int) ;

void
bfa_nw_ioc_get_attr(struct bfa_ioc *ioc, struct bfa_ioc_attr *ioc_attr)
{
 memset((void *)ioc_attr, 0, sizeof(struct bfa_ioc_attr));

 ioc_attr->state = bfa_ioc_get_state(ioc);
 ioc_attr->port_id = bfa_ioc_portid(ioc);
 ioc_attr->port_mode = ioc->port_mode;

 ioc_attr->port_mode_cfg = ioc->port_mode_cfg;
 ioc_attr->cap_bm = ioc->ad_cap_bm;

 ioc_attr->ioc_type = bfa_ioc_get_type(ioc);

 bfa_ioc_get_adapter_attr(ioc, &ioc_attr->adapter_attr);

 ioc_attr->pci_attr.device_id = bfa_ioc_devid(ioc);
 ioc_attr->pci_attr.pcifn = bfa_ioc_pcifn(ioc);
 ioc_attr->def_fn = bfa_ioc_is_default(ioc);
 bfa_ioc_get_pci_chip_rev(ioc, ioc_attr->pci_attr.chip_rev);
}
