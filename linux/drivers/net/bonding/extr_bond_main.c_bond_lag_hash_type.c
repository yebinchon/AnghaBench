
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmit_policy; } ;
struct bonding {TYPE_1__ params; } ;
typedef enum netdev_lag_tx_type { ____Placeholder_netdev_lag_tx_type } netdev_lag_tx_type ;
typedef enum netdev_lag_hash { ____Placeholder_netdev_lag_hash } netdev_lag_hash ;







 int NETDEV_LAG_HASH_E23 ;
 int NETDEV_LAG_HASH_E34 ;
 int NETDEV_LAG_HASH_L2 ;
 int NETDEV_LAG_HASH_L23 ;
 int NETDEV_LAG_HASH_L34 ;
 int NETDEV_LAG_HASH_NONE ;
 int NETDEV_LAG_HASH_UNKNOWN ;
 int NETDEV_LAG_TX_TYPE_HASH ;

__attribute__((used)) static enum netdev_lag_hash bond_lag_hash_type(struct bonding *bond,
            enum netdev_lag_tx_type type)
{
 if (type != NETDEV_LAG_TX_TYPE_HASH)
  return NETDEV_LAG_HASH_NONE;

 switch (bond->params.xmit_policy) {
 case 130:
  return NETDEV_LAG_HASH_L2;
 case 128:
  return NETDEV_LAG_HASH_L34;
 case 129:
  return NETDEV_LAG_HASH_L23;
 case 132:
  return NETDEV_LAG_HASH_E23;
 case 131:
  return NETDEV_LAG_HASH_E34;
 default:
  return NETDEV_LAG_HASH_UNKNOWN;
 }
}
