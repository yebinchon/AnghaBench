
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tbl_log_size; } ;
struct ena_com_dev {TYPE_1__ rss; } ;
struct ena_adapter {int netdev; struct ena_com_dev* ena_dev; } ;


 int EOPNOTSUPP ;
 int ena_com_indirect_table_set (struct ena_com_dev*) ;
 int ena_com_set_hash_ctrl (struct ena_com_dev*) ;
 int ena_com_set_hash_function (struct ena_com_dev*) ;
 int ena_rss_init_default (struct ena_adapter*) ;
 int ifup ;
 int netif_err (struct ena_adapter*,int ,int ,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_rss_configure(struct ena_adapter *adapter)
{
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 int rc;


 if (!ena_dev->rss.tbl_log_size) {
  rc = ena_rss_init_default(adapter);
  if (rc && (rc != -EOPNOTSUPP)) {
   netif_err(adapter, ifup, adapter->netdev,
      "Failed to init RSS rc: %d\n", rc);
   return rc;
  }
 }


 rc = ena_com_indirect_table_set(ena_dev);
 if (unlikely(rc && rc != -EOPNOTSUPP))
  return rc;


 rc = ena_com_set_hash_function(ena_dev);
 if (unlikely(rc && (rc != -EOPNOTSUPP)))
  return rc;


 rc = ena_com_set_hash_ctrl(ena_dev);
 if (unlikely(rc && (rc != -EOPNOTSUPP)))
  return rc;

 return 0;
}
