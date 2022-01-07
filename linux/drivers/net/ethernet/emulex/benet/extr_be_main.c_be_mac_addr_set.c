
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sockaddr {scalar_t__ sa_data; } ;
struct net_device {int * dev_addr; } ;
struct device {int dummy; } ;
struct be_adapter {scalar_t__* pmac_id; int * dev_mac; int if_handle; int rx_filter_lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int BE_PRIV_FILTMGMT ;
 scalar_t__ BEx_chip (struct be_adapter*) ;
 int EADDRNOTAVAIL ;
 int EPERM ;
 int ETH_ALEN ;
 int be_cmd_get_active_mac (struct be_adapter*,scalar_t__,int *,int ,int,int ) ;
 int be_dev_mac_add (struct be_adapter*,int *) ;
 int be_dev_mac_del (struct be_adapter*,scalar_t__) ;
 scalar_t__ be_virtfn (struct be_adapter*) ;
 int check_privilege (struct be_adapter*,int ) ;
 int dev_info (struct device*,char*,scalar_t__) ;
 int dev_warn (struct device*,char*,scalar_t__) ;
 int ether_addr_copy (int *,scalar_t__) ;
 scalar_t__ ether_addr_equal (scalar_t__,int *) ;
 int is_valid_ether_addr (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int be_mac_addr_set(struct net_device *netdev, void *p)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct device *dev = &adapter->pdev->dev;
 struct sockaddr *addr = p;
 int status;
 u8 mac[ETH_ALEN];
 u32 old_pmac_id = adapter->pmac_id[0];

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;




 if (ether_addr_equal(addr->sa_data, adapter->dev_mac))
  return 0;




 if (BEx_chip(adapter) && be_virtfn(adapter) &&
     !check_privilege(adapter, BE_PRIV_FILTMGMT))
  return -EPERM;


 if (!netif_running(netdev))
  goto done;







 mutex_lock(&adapter->rx_filter_lock);
 status = be_dev_mac_add(adapter, (u8 *)addr->sa_data);
 if (!status) {




  if (adapter->pmac_id[0] != old_pmac_id)
   be_dev_mac_del(adapter, old_pmac_id);
 }

 mutex_unlock(&adapter->rx_filter_lock);



 status = be_cmd_get_active_mac(adapter, adapter->pmac_id[0], mac,
           adapter->if_handle, 1, 0);
 if (status)
  goto err;




 if (!ether_addr_equal(addr->sa_data, mac)) {
  status = -EPERM;
  goto err;
 }


 ether_addr_copy(adapter->dev_mac, addr->sa_data);
done:
 ether_addr_copy(netdev->dev_addr, addr->sa_data);
 dev_info(dev, "MAC address changed to %pM\n", addr->sa_data);
 return 0;
err:
 dev_warn(dev, "MAC address change to %pM failed\n", addr->sa_data);
 return status;
}
