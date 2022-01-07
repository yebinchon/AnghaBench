
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;


 int IXGBE_ERR_INVALID_ARGUMENT ;
 int ixgbe_mbox_api_10 ;

__attribute__((used)) static int ixgbevf_hv_negotiate_api_version_vf(struct ixgbe_hw *hw, int api)
{

 if (api != ixgbe_mbox_api_10)
  return IXGBE_ERR_INVALID_ARGUMENT;

 return 0;
}
