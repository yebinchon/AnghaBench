
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iavf_hw {int dummy; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int iavf_aq_get_set_rss_lut (struct iavf_hw*,int ,int,int *,int ,int) ;

enum iavf_status iavf_aq_get_rss_lut(struct iavf_hw *hw, u16 vsi_id,
         bool pf_lut, u8 *lut, u16 lut_size)
{
 return iavf_aq_get_set_rss_lut(hw, vsi_id, pf_lut, lut, lut_size,
           0);
}
