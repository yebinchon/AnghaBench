
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; } ;
struct TYPE_5__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;


 TYPE_1__* ibmvnic_priv_flags ;
 TYPE_1__* ibmvnic_stats ;
 int memcpy (int *,int ,int) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int snprintf (int *,int,char*,int) ;
 int strcpy (int *,TYPE_1__) ;

__attribute__((used)) static void ibmvnic_get_strings(struct net_device *dev, u32 stringset, u8 *data)
{
 struct ibmvnic_adapter *adapter = netdev_priv(dev);
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(ibmvnic_stats);
    i++, data += ETH_GSTRING_LEN)
   memcpy(data, ibmvnic_stats[i].name, ETH_GSTRING_LEN);

  for (i = 0; i < adapter->req_tx_queues; i++) {
   snprintf(data, ETH_GSTRING_LEN, "tx%d_packets", i);
   data += ETH_GSTRING_LEN;

   snprintf(data, ETH_GSTRING_LEN, "tx%d_bytes", i);
   data += ETH_GSTRING_LEN;

   snprintf(data, ETH_GSTRING_LEN,
     "tx%d_dropped_packets", i);
   data += ETH_GSTRING_LEN;
  }

  for (i = 0; i < adapter->req_rx_queues; i++) {
   snprintf(data, ETH_GSTRING_LEN, "rx%d_packets", i);
   data += ETH_GSTRING_LEN;

   snprintf(data, ETH_GSTRING_LEN, "rx%d_bytes", i);
   data += ETH_GSTRING_LEN;

   snprintf(data, ETH_GSTRING_LEN, "rx%d_interrupts", i);
   data += ETH_GSTRING_LEN;
  }
  break;

 case 129:
  for (i = 0; i < ARRAY_SIZE(ibmvnic_priv_flags); i++)
   strcpy(data + i * ETH_GSTRING_LEN,
          ibmvnic_priv_flags[i]);
  break;
 default:
  return;
 }
}
