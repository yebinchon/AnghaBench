
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_if {int dummy; } ;
struct brcmf_btcoex_info {int dhcp_done; int work; int bt_state; TYPE_1__* vif; } ;
struct TYPE_2__ {struct brcmf_if* ifp; } ;


 int BRCMF_BT_DHCP_REG41 ;
 int BRCMF_BT_DHCP_REG66 ;
 int BRCMF_BT_DHCP_REG68 ;
 int BRCMF_BT_DHCP_START ;
 int TRACE ;
 int brcmf_btcoex_params_write (struct brcmf_if*,int,int ) ;
 int brcmf_dbg (int ,char*) ;
 int btcmf_btcoex_save_part1 (struct brcmf_btcoex_info*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void brcmf_btcoex_dhcp_start(struct brcmf_btcoex_info *btci)
{
 struct brcmf_if *ifp = btci->vif->ifp;

 btcmf_btcoex_save_part1(btci);

 brcmf_btcoex_params_write(ifp, 66, BRCMF_BT_DHCP_REG66);
 brcmf_btcoex_params_write(ifp, 41, BRCMF_BT_DHCP_REG41);
 brcmf_btcoex_params_write(ifp, 68, BRCMF_BT_DHCP_REG68);
 btci->dhcp_done = 0;
 btci->bt_state = BRCMF_BT_DHCP_START;
 schedule_work(&btci->work);
 brcmf_dbg(TRACE, "enable BT DHCP Timer\n");
}
