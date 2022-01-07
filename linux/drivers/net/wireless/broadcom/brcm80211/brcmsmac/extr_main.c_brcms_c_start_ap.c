
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const u8 ;
struct brcms_c_info {int hw; TYPE_2__* bsscfg; TYPE_1__* pub; } ;
struct TYPE_4__ {int type; int BSSID; } ;
struct TYPE_3__ {int cur_etheraddr; } ;


 int BRCMS_TYPE_AP ;
 int MCTL_AP ;
 int MCTL_INFRA ;
 int brcms_b_mctrl (int ,int,int) ;
 int brcms_c_set_ssid (struct brcms_c_info*,int const*,size_t) ;
 int memcpy (int ,int const*,int) ;

void brcms_c_start_ap(struct brcms_c_info *wlc, u8 *addr, const u8 *bssid,
        u8 *ssid, size_t ssid_len)
{
 brcms_c_set_ssid(wlc, ssid, ssid_len);

 memcpy(wlc->pub->cur_etheraddr, addr, sizeof(wlc->pub->cur_etheraddr));
 memcpy(wlc->bsscfg->BSSID, bssid, sizeof(wlc->bsscfg->BSSID));
 wlc->bsscfg->type = BRCMS_TYPE_AP;

 brcms_b_mctrl(wlc->hw, MCTL_AP | MCTL_INFRA, MCTL_AP | MCTL_INFRA);
}
