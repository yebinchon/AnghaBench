
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int q_opt_rss; } ;
struct ice_vsi_ctx {TYPE_2__ info; } ;
struct ice_vsi {int type; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int ICE_AQ_VSI_Q_OPT_RSS_HASH_M ;
 int ICE_AQ_VSI_Q_OPT_RSS_HASH_S ;
 int ICE_AQ_VSI_Q_OPT_RSS_LUT_M ;
 int ICE_AQ_VSI_Q_OPT_RSS_LUT_PF ;
 int ICE_AQ_VSI_Q_OPT_RSS_LUT_S ;
 int ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI ;
 int ICE_AQ_VSI_Q_OPT_RSS_TPLZ ;



 int dev_dbg (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
{
 u8 lut_type, hash_type;
 struct ice_pf *pf;

 pf = vsi->back;

 switch (vsi->type) {
 case 129:

  lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
  hash_type = ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
  break;
 case 128:

  lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
  hash_type = ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
  break;
 case 130:
  dev_dbg(&pf->pdev->dev, "Unsupported VSI type %d\n", vsi->type);
  return;
 default:
  dev_warn(&pf->pdev->dev, "Unknown VSI type %d\n", vsi->type);
  return;
 }

 ctxt->info.q_opt_rss = ((lut_type << ICE_AQ_VSI_Q_OPT_RSS_LUT_S) &
    ICE_AQ_VSI_Q_OPT_RSS_LUT_M) |
    ((hash_type << ICE_AQ_VSI_Q_OPT_RSS_HASH_S) &
     ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
}
