
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct i40e_rx_flow_userdef {int flex_word; int flex_offset; int flex_filter; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ethtool_rx_flow_spec {int flow_type; TYPE_2__ m_ext; TYPE_1__ h_ext; } ;
typedef int __be64 ;


 int EINVAL ;
 int FLOW_EXT ;
 int I40E_USERDEF_FLEX_FILTER ;
 int I40E_USERDEF_FLEX_OFFSET ;
 int I40E_USERDEF_FLEX_WORD ;
 int be64_to_cpu (int ) ;
 int i40e_check_mask (int,int ) ;
 int memset (struct i40e_rx_flow_userdef*,int ,int) ;

__attribute__((used)) static int i40e_parse_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
     struct i40e_rx_flow_userdef *data)
{
 u64 value, mask;
 int valid;


 memset(data, 0, sizeof(*data));

 if (!(fsp->flow_type & FLOW_EXT))
  return 0;

 value = be64_to_cpu(*((__be64 *)fsp->h_ext.data));
 mask = be64_to_cpu(*((__be64 *)fsp->m_ext.data));





 valid = i40e_check_mask(mask, GENMASK_ULL(31, 0));
 if (valid < 0) {
  return -EINVAL;
 } else if (valid) {
  data->flex_word = value & GENMASK_ULL(15, 0);
  data->flex_offset =
   (value & GENMASK_ULL(31, 16)) >> 16;
  data->flex_filter = 1;
 }

 return 0;
}
