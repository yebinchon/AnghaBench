
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {struct ena_com_dev* ena_dev; } ;
typedef enum ena_admin_hash_functions { ____Placeholder_ena_admin_hash_functions } ena_admin_hash_functions ;


 int ENA_ADMIN_CRC32 ;
 int ENA_ADMIN_TOEPLITZ ;
 int ENA_HASH_KEY_SIZE ;
 int ENA_IO_RXQ_IDX (int const) ;
 int ENA_RX_RSS_TABLE_SIZE ;
 int EOPNOTSUPP ;
 int EPERM ;


 int drv ;
 int ena_com_fill_hash_function (struct ena_com_dev*,int,int const*,int ,int) ;
 int ena_com_indirect_table_fill_entry (struct ena_com_dev*,int,int ) ;
 int ena_com_indirect_table_set (struct ena_com_dev*) ;
 struct ena_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ena_adapter*,int ,struct net_device*,char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_set_rxfh(struct net_device *netdev, const u32 *indir,
   const u8 *key, const u8 hfunc)
{
 struct ena_adapter *adapter = netdev_priv(netdev);
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 enum ena_admin_hash_functions func;
 int rc, i;

 if (indir) {
  for (i = 0; i < ENA_RX_RSS_TABLE_SIZE; i++) {
   rc = ena_com_indirect_table_fill_entry(ena_dev,
              i,
              ENA_IO_RXQ_IDX(indir[i]));
   if (unlikely(rc)) {
    netif_err(adapter, drv, netdev,
       "Cannot fill indirect table (index is too large)\n");
    return rc;
   }
  }

  rc = ena_com_indirect_table_set(ena_dev);
  if (rc) {
   netif_err(adapter, drv, netdev,
      "Cannot set indirect table\n");
   return rc == -EPERM ? -EOPNOTSUPP : rc;
  }
 }

 switch (hfunc) {
 case 129:
  func = ENA_ADMIN_TOEPLITZ;
  break;
 case 128:
  func = ENA_ADMIN_CRC32;
  break;
 default:
  netif_err(adapter, drv, netdev, "Unsupported hfunc %d\n",
     hfunc);
  return -EOPNOTSUPP;
 }

 if (key) {
  rc = ena_com_fill_hash_function(ena_dev, func, key,
      ENA_HASH_KEY_SIZE,
      0xFFFFFFFF);
  if (unlikely(rc)) {
   netif_err(adapter, drv, netdev, "Cannot fill key\n");
   return rc == -EPERM ? -EOPNOTSUPP : rc;
  }
 }

 return 0;
}
