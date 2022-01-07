
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_ongoing; } ;
struct ice_pf {int state; TYPE_1__ hw; } ;
typedef enum ice_reset_req { ____Placeholder_ice_reset_req } ice_reset_req ;


 int ICE_RESET_CORER ;
 int ICE_RESET_EMPR ;
 int ICE_RESET_GLOBR ;
 int ICE_RESET_INVAL ;
 int ICE_RESET_PFR ;
 int __ICE_CFG_BUSY ;
 int __ICE_CORER_RECV ;
 int __ICE_CORER_REQ ;
 int __ICE_DOWN ;
 int __ICE_EMPR_RECV ;
 int __ICE_GLOBR_RECV ;
 int __ICE_GLOBR_REQ ;
 int __ICE_PFR_REQ ;
 int __ICE_PREPARED_FOR_RESET ;
 int __ICE_RESET_FAILED ;
 int __ICE_RESET_OICR_RECV ;
 int clear_bit (int ,int ) ;
 scalar_t__ ice_check_reset (TYPE_1__*) ;
 int ice_do_reset (struct ice_pf*,int) ;
 int ice_prepare_for_reset (struct ice_pf*) ;
 int ice_rebuild (struct ice_pf*,int) ;
 int ice_reset_all_vfs (struct ice_pf*,int) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void ice_reset_subtask(struct ice_pf *pf)
{
 enum ice_reset_req reset_type = ICE_RESET_INVAL;
 if (test_bit(__ICE_RESET_OICR_RECV, pf->state)) {

  if (test_and_clear_bit(__ICE_CORER_RECV, pf->state))
   reset_type = ICE_RESET_CORER;
  if (test_and_clear_bit(__ICE_GLOBR_RECV, pf->state))
   reset_type = ICE_RESET_GLOBR;
  if (test_and_clear_bit(__ICE_EMPR_RECV, pf->state))
   reset_type = ICE_RESET_EMPR;

  if (reset_type == ICE_RESET_INVAL)
   return;
  ice_prepare_for_reset(pf);


  if (ice_check_reset(&pf->hw)) {
   set_bit(__ICE_RESET_FAILED, pf->state);
  } else {

   pf->hw.reset_ongoing = 0;
   ice_rebuild(pf, reset_type);



   clear_bit(__ICE_RESET_OICR_RECV, pf->state);
   clear_bit(__ICE_PREPARED_FOR_RESET, pf->state);
   clear_bit(__ICE_PFR_REQ, pf->state);
   clear_bit(__ICE_CORER_REQ, pf->state);
   clear_bit(__ICE_GLOBR_REQ, pf->state);
   ice_reset_all_vfs(pf, 1);
  }

  return;
 }


 if (test_bit(__ICE_PFR_REQ, pf->state))
  reset_type = ICE_RESET_PFR;
 if (test_bit(__ICE_CORER_REQ, pf->state))
  reset_type = ICE_RESET_CORER;
 if (test_bit(__ICE_GLOBR_REQ, pf->state))
  reset_type = ICE_RESET_GLOBR;

 if (reset_type == ICE_RESET_INVAL)
  return;


 if (!test_bit(__ICE_DOWN, pf->state) &&
     !test_bit(__ICE_CFG_BUSY, pf->state)) {
  ice_do_reset(pf, reset_type);
 }
}
