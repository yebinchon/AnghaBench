
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mac_addr; int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ change_mac_addr; } ;
typedef int u8 ;
struct net_device {int * dev_addr; } ;
struct ibmvnic_adapter {int * mac_addr; scalar_t__ fw_done_rc; int fw_done; } ;
typedef int crq ;


 int CHANGE_MAC_ADDR ;
 int EADDRNOTAVAIL ;
 int EIO ;
 int IBMVNIC_CRQ_CMD ;
 int ether_addr_copy (int *,int *) ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int init_completion (int *) ;
 int is_valid_ether_addr (int *) ;
 int memset (union ibmvnic_crq*,int ,int) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int __ibmvnic_set_mac(struct net_device *netdev, u8 *dev_addr)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 union ibmvnic_crq crq;
 int rc;

 if (!is_valid_ether_addr(dev_addr)) {
  rc = -EADDRNOTAVAIL;
  goto err;
 }

 memset(&crq, 0, sizeof(crq));
 crq.change_mac_addr.first = IBMVNIC_CRQ_CMD;
 crq.change_mac_addr.cmd = CHANGE_MAC_ADDR;
 ether_addr_copy(&crq.change_mac_addr.mac_addr[0], dev_addr);

 init_completion(&adapter->fw_done);
 rc = ibmvnic_send_crq(adapter, &crq);
 if (rc) {
  rc = -EIO;
  goto err;
 }

 wait_for_completion(&adapter->fw_done);

 if (adapter->fw_done_rc) {
  rc = -EIO;
  goto err;
 }

 return 0;
err:
 ether_addr_copy(adapter->mac_addr, netdev->dev_addr);
 return rc;
}
