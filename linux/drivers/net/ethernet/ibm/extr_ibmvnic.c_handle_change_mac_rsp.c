
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {long code; } ;
struct TYPE_6__ {int * mac_addr; TYPE_2__ rc; } ;
union ibmvnic_crq {TYPE_3__ change_mac_addr_rsp; } ;
struct net_device {int dev_addr; } ;
struct ibmvnic_adapter {int fw_done; TYPE_1__* vdev; struct net_device* netdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int complete (int *) ;
 int dev_err (struct device*,char*,long) ;
 int ether_addr_copy (int ,int *) ;

__attribute__((used)) static int handle_change_mac_rsp(union ibmvnic_crq *crq,
     struct ibmvnic_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct device *dev = &adapter->vdev->dev;
 long rc;

 rc = crq->change_mac_addr_rsp.rc.code;
 if (rc) {
  dev_err(dev, "Error %ld in CHANGE_MAC_ADDR_RSP\n", rc);
  goto out;
 }
 ether_addr_copy(netdev->dev_addr,
   &crq->change_mac_addr_rsp.mac_addr[0]);
out:
 complete(&adapter->fw_done);
 return rc;
}
