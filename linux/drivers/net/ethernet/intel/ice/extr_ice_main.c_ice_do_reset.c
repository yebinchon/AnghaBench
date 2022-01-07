
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct ice_pf {int state; int pfr_count; struct ice_hw hw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef enum ice_reset_req { ____Placeholder_ice_reset_req } ice_reset_req ;
struct TYPE_2__ {struct device dev; } ;


 int ICE_RESET_PFR ;
 int WARN_ON (int ) ;
 int __ICE_CORER_REQ ;
 int __ICE_GLOBR_REQ ;
 int __ICE_PFR_REQ ;
 int __ICE_PREPARED_FOR_RESET ;
 int __ICE_RESET_FAILED ;
 int __ICE_RESET_OICR_RECV ;
 int clear_bit (int ,int ) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,int) ;
 int ice_prepare_for_reset (struct ice_pf*) ;
 int ice_rebuild (struct ice_pf*,int) ;
 scalar_t__ ice_reset (struct ice_hw*,int) ;
 int ice_reset_all_vfs (struct ice_pf*,int) ;
 int in_interrupt () ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void ice_do_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
{
 struct device *dev = &pf->pdev->dev;
 struct ice_hw *hw = &pf->hw;

 dev_dbg(dev, "reset_type 0x%x requested\n", reset_type);
 WARN_ON(in_interrupt());

 ice_prepare_for_reset(pf);


 if (ice_reset(hw, reset_type)) {
  dev_err(dev, "reset %d failed\n", reset_type);
  set_bit(__ICE_RESET_FAILED, pf->state);
  clear_bit(__ICE_RESET_OICR_RECV, pf->state);
  clear_bit(__ICE_PREPARED_FOR_RESET, pf->state);
  clear_bit(__ICE_PFR_REQ, pf->state);
  clear_bit(__ICE_CORER_REQ, pf->state);
  clear_bit(__ICE_GLOBR_REQ, pf->state);
  return;
 }





 if (reset_type == ICE_RESET_PFR) {
  pf->pfr_count++;
  ice_rebuild(pf, reset_type);
  clear_bit(__ICE_PREPARED_FOR_RESET, pf->state);
  clear_bit(__ICE_PFR_REQ, pf->state);
  ice_reset_all_vfs(pf, 1);
 }
}
