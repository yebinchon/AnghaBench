
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ibmvnic_adapter {int fw_version; } ;
struct ethtool_drvinfo {int fw_version; int version; int driver; } ;


 int IBMVNIC_DRIVER_VERSION ;
 int ibmvnic_driver_name ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ibmvnic_get_drvinfo(struct net_device *netdev,
    struct ethtool_drvinfo *info)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);

 strlcpy(info->driver, ibmvnic_driver_name, sizeof(info->driver));
 strlcpy(info->version, IBMVNIC_DRIVER_VERSION, sizeof(info->version));
 strlcpy(info->fw_version, adapter->fw_version,
  sizeof(info->fw_version));
}
