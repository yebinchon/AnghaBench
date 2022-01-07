
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_bss_cfg {int BSSID; int wlc; } ;


 int RCM_BSSID_OFFSET ;
 int brcms_c_set_addrmatch (int ,int ,int ) ;

__attribute__((used)) static void brcms_c_set_bssid(struct brcms_bss_cfg *bsscfg)
{

 brcms_c_set_addrmatch(bsscfg->wlc, RCM_BSSID_OFFSET, bsscfg->BSSID);
}
