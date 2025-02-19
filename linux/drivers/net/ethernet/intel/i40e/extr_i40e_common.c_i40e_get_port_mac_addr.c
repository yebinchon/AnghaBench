
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_mac_address_read_data {int port_mac; } ;
typedef scalar_t__ i40e_status ;


 int I40E_AQC_PORT_ADDR_VALID ;
 scalar_t__ I40E_ERR_INVALID_MAC_ADDR ;
 int ether_addr_copy (int *,int ) ;
 scalar_t__ i40e_aq_mac_address_read (struct i40e_hw*,int*,struct i40e_aqc_mac_address_read_data*,int *) ;

i40e_status i40e_get_port_mac_addr(struct i40e_hw *hw, u8 *mac_addr)
{
 struct i40e_aqc_mac_address_read_data addrs;
 i40e_status status;
 u16 flags = 0;

 status = i40e_aq_mac_address_read(hw, &flags, &addrs, ((void*)0));
 if (status)
  return status;

 if (flags & I40E_AQC_PORT_ADDR_VALID)
  ether_addr_copy(mac_addr, addrs.port_mac);
 else
  status = I40E_ERR_INVALID_MAC_ADDR;

 return status;
}
