
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ code; } ;
struct TYPE_5__ {TYPE_1__ rc; } ;
union ibmvnic_crq {TYPE_2__ generic; } ;
struct net_device {scalar_t__ mtu; } ;
struct ibmvnic_login_rsp_buffer {scalar_t__ num_txsubm_subcrqs; int num_rxadd_subcrqs; } ;
struct ibmvnic_login_buffer {scalar_t__ num_txcomp_subcrqs; int num_rxcomp_subcrqs; } ;
struct ibmvnic_adapter {int login_buf_sz; int login_rsp_buf_sz; int req_rx_add_queues; int init_done; TYPE_3__* vdev; struct ibmvnic_login_rsp_buffer* login_rsp_buf; struct net_device* netdev; scalar_t__ req_mtu; scalar_t__ init_done_rc; int login_rsp_buf_token; int login_buf_token; struct ibmvnic_login_buffer* login_buf; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EIO ;
 scalar_t__ ETH_HLEN ;
 int be32_to_cpu (int ) ;
 int complete (int *) ;
 int dev_err (struct device*,char*) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int ibmvnic_remove (TYPE_3__*) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 int release_login_buffer (struct ibmvnic_adapter*) ;

__attribute__((used)) static int handle_login_rsp(union ibmvnic_crq *login_rsp_crq,
       struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;
 struct net_device *netdev = adapter->netdev;
 struct ibmvnic_login_rsp_buffer *login_rsp = adapter->login_rsp_buf;
 struct ibmvnic_login_buffer *login = adapter->login_buf;
 int i;

 dma_unmap_single(dev, adapter->login_buf_token, adapter->login_buf_sz,
    DMA_TO_DEVICE);
 dma_unmap_single(dev, adapter->login_rsp_buf_token,
    adapter->login_rsp_buf_sz, DMA_FROM_DEVICE);





 if (login_rsp_crq->generic.rc.code) {
  adapter->init_done_rc = login_rsp_crq->generic.rc.code;
  complete(&adapter->init_done);
  return 0;
 }

 netdev->mtu = adapter->req_mtu - ETH_HLEN;

 netdev_dbg(adapter->netdev, "Login Response Buffer:\n");
 for (i = 0; i < (adapter->login_rsp_buf_sz - 1) / 8 + 1; i++) {
  netdev_dbg(adapter->netdev, "%016lx\n",
      ((unsigned long int *)(adapter->login_rsp_buf))[i]);
 }


 if (login->num_txcomp_subcrqs != login_rsp->num_txsubm_subcrqs ||
     (be32_to_cpu(login->num_rxcomp_subcrqs) *
      adapter->req_rx_add_queues !=
      be32_to_cpu(login_rsp->num_rxadd_subcrqs))) {
  dev_err(dev, "FATAL: Inconsistent login and login rsp\n");
  ibmvnic_remove(adapter->vdev);
  return -EIO;
 }
 release_login_buffer(adapter);
 complete(&adapter->init_done);

 return 0;
}
