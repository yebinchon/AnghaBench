
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* pub; } ;
struct brcms_bss_cfg {struct brcms_c_info* wlc; } ;
struct TYPE_2__ {int cur_etheraddr; } ;


 int RCM_MAC_OFFSET ;
 int brcms_c_ampdu_macaddr_upd (struct brcms_c_info*) ;
 int brcms_c_set_addrmatch (struct brcms_c_info*,int ,int ) ;

__attribute__((used)) static int brcms_c_set_mac(struct brcms_bss_cfg *bsscfg)
{
 int err = 0;
 struct brcms_c_info *wlc = bsscfg->wlc;


 brcms_c_set_addrmatch(wlc, RCM_MAC_OFFSET, wlc->pub->cur_etheraddr);

 brcms_c_ampdu_macaddr_upd(wlc);

 return err;
}
