
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int vlan_strip_pending; } ;


 int bna_bfi_vlan_strip_enable (struct bna_rxf*) ;

__attribute__((used)) static int
bna_rxf_vlan_strip_cfg_apply(struct bna_rxf *rxf)
{
 if (rxf->vlan_strip_pending) {
   rxf->vlan_strip_pending = 0;
   bna_bfi_vlan_strip_enable(rxf);
   return 1;
 }

 return 0;
}
