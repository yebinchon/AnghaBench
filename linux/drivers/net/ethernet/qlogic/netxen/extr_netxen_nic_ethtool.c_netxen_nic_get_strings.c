
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stat_string; } ;


 int ETH_GSTRING_LEN ;


 int NETXEN_NIC_STATS_LEN ;
 int NETXEN_NIC_TEST_LEN ;
 int memcpy (int *,int ,int) ;
 TYPE_1__* netxen_nic_gstrings_stats ;
 int * netxen_nic_gstrings_test ;

__attribute__((used)) static void
netxen_nic_get_strings(struct net_device *dev, u32 stringset, u8 *data)
{
 int index;

 switch (stringset) {
 case 128:
  memcpy(data, *netxen_nic_gstrings_test,
         NETXEN_NIC_TEST_LEN * ETH_GSTRING_LEN);
  break;
 case 129:
  for (index = 0; index < NETXEN_NIC_STATS_LEN; index++) {
   memcpy(data + index * ETH_GSTRING_LEN,
          netxen_nic_gstrings_stats[index].stat_string,
          ETH_GSTRING_LEN);
  }
  break;
 }
}
