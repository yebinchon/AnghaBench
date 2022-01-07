
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;




 int iavf_get_priv_flag_strings (struct net_device*,int *) ;
 int iavf_get_stat_strings (struct net_device*,int *) ;

__attribute__((used)) static void iavf_get_strings(struct net_device *netdev, u32 sset, u8 *data)
{
 switch (sset) {
 case 128:
  iavf_get_stat_strings(netdev, data);
  break;
 case 129:
  iavf_get_priv_flag_strings(netdev, data);
  break;
 default:
  break;
 }
}
