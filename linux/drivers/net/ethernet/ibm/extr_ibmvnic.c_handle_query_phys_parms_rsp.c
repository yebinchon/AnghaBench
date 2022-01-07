
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code; } ;
struct TYPE_4__ {int flags1; TYPE_1__ rc; int speed; } ;
union ibmvnic_crq {TYPE_2__ query_phys_parms_rsp; } ;
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int duplex; int speed; struct net_device* netdev; } ;
typedef int __be32 ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 int IBMVNIC_FULL_DUPLEX ;
 int IBMVNIC_HALF_DUPLEX ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_100000 ;
 int SPEED_25000 ;
 int SPEED_40000 ;
 int SPEED_50000 ;
 int SPEED_UNKNOWN ;
 int cpu_to_be32 (int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int handle_query_phys_parms_rsp(union ibmvnic_crq *crq,
           struct ibmvnic_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int rc;
 __be32 rspeed = cpu_to_be32(crq->query_phys_parms_rsp.speed);

 rc = crq->query_phys_parms_rsp.rc.code;
 if (rc) {
  netdev_err(netdev, "Error %d in QUERY_PHYS_PARMS\n", rc);
  return rc;
 }
 switch (rspeed) {
 case 132:
  adapter->speed = SPEED_10;
  break;
 case 134:
  adapter->speed = SPEED_100;
  break;
 case 131:
  adapter->speed = SPEED_1000;
  break;
 case 133:
  adapter->speed = SPEED_10000;
  break;
 case 130:
  adapter->speed = SPEED_25000;
  break;
 case 129:
  adapter->speed = SPEED_40000;
  break;
 case 128:
  adapter->speed = SPEED_50000;
  break;
 case 135:
  adapter->speed = SPEED_100000;
  break;
 default:
  if (netif_carrier_ok(netdev))
   netdev_warn(netdev, "Unknown speed 0x%08x\n", rspeed);
  adapter->speed = SPEED_UNKNOWN;
 }
 if (crq->query_phys_parms_rsp.flags1 & IBMVNIC_FULL_DUPLEX)
  adapter->duplex = DUPLEX_FULL;
 else if (crq->query_phys_parms_rsp.flags1 & IBMVNIC_HALF_DUPLEX)
  adapter->duplex = DUPLEX_HALF;
 else
  adapter->duplex = DUPLEX_UNKNOWN;

 return rc;
}
