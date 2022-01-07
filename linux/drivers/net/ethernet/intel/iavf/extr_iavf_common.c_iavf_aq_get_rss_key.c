
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iavf_hw {int dummy; } ;
struct iavf_aqc_get_set_rss_key_data {int dummy; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int iavf_aq_get_set_rss_key (struct iavf_hw*,int ,struct iavf_aqc_get_set_rss_key_data*,int) ;

enum iavf_status iavf_aq_get_rss_key(struct iavf_hw *hw, u16 vsi_id,
         struct iavf_aqc_get_set_rss_key_data *key)
{
 return iavf_aq_get_set_rss_key(hw, vsi_id, key, 0);
}
