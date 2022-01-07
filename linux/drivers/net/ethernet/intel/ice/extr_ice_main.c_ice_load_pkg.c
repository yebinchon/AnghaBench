
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int pkg_size; scalar_t__ pkg_copy; } ;
struct ice_pf {int flags; struct ice_hw hw; TYPE_1__* pdev; } ;
struct firmware {int size; int data; } ;
struct device {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {struct device dev; } ;


 int ICE_ERR_PARAM ;
 int ICE_FLAG_ADV_FEATURES ;
 int clear_bit (int ,int ) ;
 int dev_err (struct device*,char*) ;
 int ice_copy_and_init_pkg (struct ice_hw*,int ,int ) ;
 int ice_init_pkg (struct ice_hw*,scalar_t__,int ) ;
 int ice_log_pkg_init (struct ice_hw*,int*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void
ice_load_pkg(const struct firmware *firmware, struct ice_pf *pf)
{
 enum ice_status status = ICE_ERR_PARAM;
 struct device *dev = &pf->pdev->dev;
 struct ice_hw *hw = &pf->hw;


 if (firmware && !hw->pkg_copy) {
  status = ice_copy_and_init_pkg(hw, firmware->data,
            firmware->size);
  ice_log_pkg_init(hw, &status);
 } else if (!firmware && hw->pkg_copy) {

  status = ice_init_pkg(hw, hw->pkg_copy, hw->pkg_size);
  ice_log_pkg_init(hw, &status);
 } else {
  dev_err(dev,
   "The DDP package file failed to load. Entering Safe Mode.\n");
 }

 if (status) {

  clear_bit(ICE_FLAG_ADV_FEATURES, pf->flags);
  return;
 }




 set_bit(ICE_FLAG_ADV_FEATURES, pf->flags);
}
