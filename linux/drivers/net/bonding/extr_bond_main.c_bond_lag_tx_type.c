
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int dummy; } ;
typedef enum netdev_lag_tx_type { ____Placeholder_netdev_lag_tx_type } netdev_lag_tx_type ;


 int BOND_MODE (struct bonding*) ;





 int NETDEV_LAG_TX_TYPE_ACTIVEBACKUP ;
 int NETDEV_LAG_TX_TYPE_BROADCAST ;
 int NETDEV_LAG_TX_TYPE_HASH ;
 int NETDEV_LAG_TX_TYPE_ROUNDROBIN ;
 int NETDEV_LAG_TX_TYPE_UNKNOWN ;

__attribute__((used)) static enum netdev_lag_tx_type bond_lag_tx_type(struct bonding *bond)
{
 switch (BOND_MODE(bond)) {
 case 129:
  return NETDEV_LAG_TX_TYPE_ROUNDROBIN;
 case 131:
  return NETDEV_LAG_TX_TYPE_ACTIVEBACKUP;
 case 130:
  return NETDEV_LAG_TX_TYPE_BROADCAST;
 case 128:
 case 132:
  return NETDEV_LAG_TX_TYPE_HASH;
 default:
  return NETDEV_LAG_TX_TYPE_UNKNOWN;
 }
}
