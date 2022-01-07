
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct net_device {int dummy; } ;
struct hinic_dev {size_t num_qps; } ;
struct TYPE_6__ {char* name; } ;


 size_t ARRAY_LEN (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;

 TYPE_1__* hinic_function_stats ;
 TYPE_1__* hinic_port_stats ;
 TYPE_1__* hinic_rx_queue_stats ;
 TYPE_1__* hinic_tx_queue_stats ;
 int memcpy (char*,char*,int ) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int sprintf (char*,char*,size_t) ;

__attribute__((used)) static void hinic_get_strings(struct net_device *netdev,
         u32 stringset, u8 *data)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 char *p = (char *)data;
 u16 i, j;

 switch (stringset) {
 case 128:
  for (i = 0; i < ARRAY_LEN(hinic_function_stats); i++) {
   memcpy(p, hinic_function_stats[i].name,
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }

  for (i = 0; i < ARRAY_LEN(hinic_port_stats); i++) {
   memcpy(p, hinic_port_stats[i].name,
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }

  for (i = 0; i < nic_dev->num_qps; i++) {
   for (j = 0; j < ARRAY_LEN(hinic_tx_queue_stats); j++) {
    sprintf(p, hinic_tx_queue_stats[j].name, i);
    p += ETH_GSTRING_LEN;
   }
  }

  for (i = 0; i < nic_dev->num_qps; i++) {
   for (j = 0; j < ARRAY_LEN(hinic_rx_queue_stats); j++) {
    sprintf(p, hinic_rx_queue_stats[j].name, i);
    p += ETH_GSTRING_LEN;
   }
  }

  return;
 default:
  return;
 }
}
