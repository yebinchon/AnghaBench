
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int PLCPHdr_override; } ;


 int BRCMS_PLCP_SHORT ;

__attribute__((used)) static void brcms_c_ap_upd(struct brcms_c_info *wlc)
{

 wlc->PLCPHdr_override = BRCMS_PLCP_SHORT;
}
