
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {long code; } ;
struct TYPE_6__ {int free_pages; int tot_pages; int page_size; TYPE_2__ rc; } ;
union ibmvnic_crq {TYPE_3__ query_map_rsp; } ;
struct net_device {int dummy; } ;
struct ibmvnic_adapter {TYPE_1__* vdev; struct net_device* netdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int dev_err (struct device*,char*,long) ;
 int netdev_dbg (struct net_device*,char*,int ,int ,int ) ;

__attribute__((used)) static void handle_query_map_rsp(union ibmvnic_crq *crq,
     struct ibmvnic_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct device *dev = &adapter->vdev->dev;
 long rc;

 rc = crq->query_map_rsp.rc.code;
 if (rc) {
  dev_err(dev, "Error %ld in QUERY_MAP_RSP\n", rc);
  return;
 }
 netdev_dbg(netdev, "page_size = %d\ntot_pages = %d\nfree_pages = %d\n",
     crq->query_map_rsp.page_size, crq->query_map_rsp.tot_pages,
     crq->query_map_rsp.free_pages);
}
