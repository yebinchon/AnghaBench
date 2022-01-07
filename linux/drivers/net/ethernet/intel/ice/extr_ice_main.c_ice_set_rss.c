
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ice_vsi {int rss_lut_type; int idx; struct ice_pf* back; } ;
struct TYPE_4__ {int rq_last_status; } ;
struct ice_hw {TYPE_2__ adminq; } ;
struct ice_pf {TYPE_1__* pdev; struct ice_hw hw; } ;
struct ice_aqc_get_set_rss_keys {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int dev_err (int *,char*,int,int ) ;
 int ice_aq_set_rss_key (struct ice_hw*,int ,struct ice_aqc_get_set_rss_keys*) ;
 int ice_aq_set_rss_lut (struct ice_hw*,int ,int ,int *,int ) ;

int ice_set_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
{
 struct ice_pf *pf = vsi->back;
 struct ice_hw *hw = &pf->hw;
 enum ice_status status;

 if (seed) {
  struct ice_aqc_get_set_rss_keys *buf =
      (struct ice_aqc_get_set_rss_keys *)seed;

  status = ice_aq_set_rss_key(hw, vsi->idx, buf);

  if (status) {
   dev_err(&pf->pdev->dev,
    "Cannot set RSS key, err %d aq_err %d\n",
    status, hw->adminq.rq_last_status);
   return -EIO;
  }
 }

 if (lut) {
  status = ice_aq_set_rss_lut(hw, vsi->idx, vsi->rss_lut_type,
         lut, lut_size);
  if (status) {
   dev_err(&pf->pdev->dev,
    "Cannot set RSS lut, err %d aq_err %d\n",
    status, hw->adminq.rq_last_status);
   return -EIO;
  }
 }

 return 0;
}
