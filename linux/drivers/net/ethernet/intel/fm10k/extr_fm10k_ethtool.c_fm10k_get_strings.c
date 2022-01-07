
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int ETH_GSTRING_LEN ;



 int FM10K_PRV_FLAG_LEN ;
 int FM10K_TEST_LEN ;
 int fm10k_get_stat_strings (struct net_device*,int *) ;
 int fm10k_gstrings_test ;
 int fm10k_prv_flags ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void fm10k_get_strings(struct net_device *dev,
         u32 stringset, u8 *data)
{
 switch (stringset) {
 case 128:
  memcpy(data, fm10k_gstrings_test,
         FM10K_TEST_LEN * ETH_GSTRING_LEN);
  break;
 case 129:
  fm10k_get_stat_strings(dev, data);
  break;
 case 130:
  memcpy(data, fm10k_prv_flags,
         FM10K_PRV_FLAG_LEN * ETH_GSTRING_LEN);
  break;
 }
}
