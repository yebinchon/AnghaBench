
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct i40e_rx_flow_userdef {int flex_word; scalar_t__ flex_offset; scalar_t__ flex_filter; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ethtool_rx_flow_spec {TYPE_2__ m_ext; TYPE_1__ h_ext; int flow_type; } ;
typedef int __be64 ;


 int FLOW_EXT ;
 int I40E_USERDEF_FLEX_FILTER ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static void i40e_fill_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
     struct i40e_rx_flow_userdef *data)
{
 u64 value = 0, mask = 0;

 if (data->flex_filter) {
  value |= data->flex_word;
  value |= (u64)data->flex_offset << 16;
  mask |= I40E_USERDEF_FLEX_FILTER;
 }

 if (value || mask)
  fsp->flow_type |= FLOW_EXT;

 *((__be64 *)fsp->h_ext.data) = cpu_to_be64(value);
 *((__be64 *)fsp->m_ext.data) = cpu_to_be64(mask);
}
