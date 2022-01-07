
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ena_adapter {int ena_dev; } ;
typedef enum ena_admin_hash_functions { ____Placeholder_ena_admin_hash_functions } ena_admin_hash_functions ;




 int EOPNOTSUPP ;
 int ETH_RSS_HASH_TOP ;
 int ETH_RSS_HASH_XOR ;
 int drv ;
 int ena_com_get_hash_function (int ,int*,int *) ;
 int ena_com_indirect_table_get (int ,int *) ;
 struct ena_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ena_adapter*,int ,struct net_device*,char*) ;

__attribute__((used)) static int ena_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
   u8 *hfunc)
{
 struct ena_adapter *adapter = netdev_priv(netdev);
 enum ena_admin_hash_functions ena_func;
 u8 func;
 int rc;

 rc = ena_com_indirect_table_get(adapter->ena_dev, indir);
 if (rc)
  return rc;

 rc = ena_com_get_hash_function(adapter->ena_dev, &ena_func, key);
 if (rc)
  return rc;

 switch (ena_func) {
 case 128:
  func = ETH_RSS_HASH_TOP;
  break;
 case 129:
  func = ETH_RSS_HASH_XOR;
  break;
 default:
  netif_err(adapter, drv, netdev,
     "Command parameter is not supported\n");
  return -EOPNOTSUPP;
 }

 if (hfunc)
  *hfunc = func;

 return rc;
}
