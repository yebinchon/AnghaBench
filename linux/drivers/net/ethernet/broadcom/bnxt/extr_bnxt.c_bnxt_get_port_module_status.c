
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hwrm_port_phy_qcfg_output {int phy_vendor_partnumber; } ;
struct bnxt_link_info {int module_status; struct hwrm_port_phy_qcfg_output phy_qcfg_resp; } ;
struct TYPE_2__ {int port_id; } ;
struct bnxt {int hwrm_spec_code; int dev; TYPE_1__ pf; struct bnxt_link_info link_info; } ;





 scalar_t__ bnxt_update_link (struct bnxt*,int) ;
 int netdev_warn (int ,char*,...) ;

__attribute__((used)) static void bnxt_get_port_module_status(struct bnxt *bp)
{
 struct bnxt_link_info *link_info = &bp->link_info;
 struct hwrm_port_phy_qcfg_output *resp = &link_info->phy_qcfg_resp;
 u8 module_status;

 if (bnxt_update_link(bp, 1))
  return;

 module_status = link_info->module_status;
 switch (module_status) {
 case 130:
 case 129:
 case 128:
  netdev_warn(bp->dev, "Unqualified SFP+ module detected on port %d\n",
       bp->pf.port_id);
  if (bp->hwrm_spec_code >= 0x10201) {
   netdev_warn(bp->dev, "Module part number %s\n",
        resp->phy_vendor_partnumber);
  }
  if (module_status == 130)
   netdev_warn(bp->dev, "TX is disabled\n");
  if (module_status == 129)
   netdev_warn(bp->dev, "SFP+ module is shutdown\n");
 }
}
