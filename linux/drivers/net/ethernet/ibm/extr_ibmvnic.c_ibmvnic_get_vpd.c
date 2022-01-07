
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* len; void* ioba; int cmd; void* first; } ;
struct TYPE_6__ {int cmd; void* first; } ;
union ibmvnic_crq {TYPE_3__ get_vpd; TYPE_2__ get_vpd_size; } ;
typedef int u32 ;
struct ibmvnic_adapter {int fw_done; TYPE_4__* vpd; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int len; int * buff; int dma_addr; } ;
struct TYPE_5__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int ENODATA ;
 int ENOMEM ;
 int GET_VPD ;
 int GET_VPD_SIZE ;
 int GFP_KERNEL ;
 void* IBMVNIC_CRQ_CMD ;
 void* cpu_to_be32 (int ) ;
 int dev_err (struct device*,char*) ;
 int dma_map_single (struct device*,int *,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int init_completion (int *) ;
 int kfree (int *) ;
 int * krealloc (int *,int,int ) ;
 int * kzalloc (int,int ) ;
 int reinit_completion (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ibmvnic_get_vpd(struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;
 union ibmvnic_crq crq;
 int len = 0;
 int rc;

 if (adapter->vpd->buff)
  len = adapter->vpd->len;

 init_completion(&adapter->fw_done);
 crq.get_vpd_size.first = IBMVNIC_CRQ_CMD;
 crq.get_vpd_size.cmd = GET_VPD_SIZE;
 rc = ibmvnic_send_crq(adapter, &crq);
 if (rc)
  return rc;
 wait_for_completion(&adapter->fw_done);

 if (!adapter->vpd->len)
  return -ENODATA;

 if (!adapter->vpd->buff)
  adapter->vpd->buff = kzalloc(adapter->vpd->len, GFP_KERNEL);
 else if (adapter->vpd->len != len)
  adapter->vpd->buff =
   krealloc(adapter->vpd->buff,
     adapter->vpd->len, GFP_KERNEL);

 if (!adapter->vpd->buff) {
  dev_err(dev, "Could allocate VPD buffer\n");
  return -ENOMEM;
 }

 adapter->vpd->dma_addr =
  dma_map_single(dev, adapter->vpd->buff, adapter->vpd->len,
          DMA_FROM_DEVICE);
 if (dma_mapping_error(dev, adapter->vpd->dma_addr)) {
  dev_err(dev, "Could not map VPD buffer\n");
  kfree(adapter->vpd->buff);
  adapter->vpd->buff = ((void*)0);
  return -ENOMEM;
 }

 reinit_completion(&adapter->fw_done);
 crq.get_vpd.first = IBMVNIC_CRQ_CMD;
 crq.get_vpd.cmd = GET_VPD;
 crq.get_vpd.ioba = cpu_to_be32(adapter->vpd->dma_addr);
 crq.get_vpd.len = cpu_to_be32((u32)adapter->vpd->len);
 rc = ibmvnic_send_crq(adapter, &crq);
 if (rc) {
  kfree(adapter->vpd->buff);
  adapter->vpd->buff = ((void*)0);
  return rc;
 }
 wait_for_completion(&adapter->fw_done);

 return 0;
}
