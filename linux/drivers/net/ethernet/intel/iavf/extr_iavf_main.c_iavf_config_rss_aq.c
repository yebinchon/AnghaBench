
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int asq_last_status; } ;
struct iavf_hw {TYPE_3__ aq; } ;
struct iavf_aqc_get_set_rss_key_data {int dummy; } ;
struct TYPE_4__ {int id; } ;
struct iavf_adapter {scalar_t__ current_op; TYPE_2__* pdev; int rss_lut_size; int rss_lut; TYPE_1__ vsi; struct iavf_hw hw; scalar_t__ rss_key; } ;
struct TYPE_5__ {int dev; } ;


 int EBUSY ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int dev_err (int *,char*,scalar_t__,...) ;
 int iavf_aq_set_rss_key (struct iavf_hw*,int ,struct iavf_aqc_get_set_rss_key_data*) ;
 int iavf_aq_set_rss_lut (struct iavf_hw*,int ,int,int ,int ) ;
 int iavf_aq_str (struct iavf_hw*,int ) ;
 int iavf_stat_str (struct iavf_hw*,int) ;

__attribute__((used)) static int iavf_config_rss_aq(struct iavf_adapter *adapter)
{
 struct iavf_aqc_get_set_rss_key_data *rss_key =
  (struct iavf_aqc_get_set_rss_key_data *)adapter->rss_key;
 struct iavf_hw *hw = &adapter->hw;
 int ret = 0;

 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot configure RSS, command %d pending\n",
   adapter->current_op);
  return -EBUSY;
 }

 ret = iavf_aq_set_rss_key(hw, adapter->vsi.id, rss_key);
 if (ret) {
  dev_err(&adapter->pdev->dev, "Cannot set RSS key, err %s aq_err %s\n",
   iavf_stat_str(hw, ret),
   iavf_aq_str(hw, hw->aq.asq_last_status));
  return ret;

 }

 ret = iavf_aq_set_rss_lut(hw, adapter->vsi.id, 0,
      adapter->rss_lut, adapter->rss_lut_size);
 if (ret) {
  dev_err(&adapter->pdev->dev, "Cannot set RSS lut, err %s aq_err %s\n",
   iavf_stat_str(hw, ret),
   iavf_aq_str(hw, hw->aq.asq_last_status));
 }

 return ret;

}
