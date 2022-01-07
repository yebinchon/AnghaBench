
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int ETH_GSTRING_LEN ;



 int I40E_TEST_LEN ;
 int i40e_get_priv_flag_strings (struct net_device*,int *) ;
 int i40e_get_stat_strings (struct net_device*,int *) ;
 int i40e_gstrings_test ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void i40e_get_strings(struct net_device *netdev, u32 stringset,
        u8 *data)
{
 switch (stringset) {
 case 128:
  memcpy(data, i40e_gstrings_test,
         I40E_TEST_LEN * ETH_GSTRING_LEN);
  break;
 case 129:
  i40e_get_stat_strings(netdev, data);
  break;
 case 130:
  i40e_get_priv_flag_strings(netdev, data);
  break;
 default:
  break;
 }
}
