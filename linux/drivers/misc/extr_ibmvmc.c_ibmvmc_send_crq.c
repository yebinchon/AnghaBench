
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vio_dev {int unit_address; } ;
struct crq_server_adapter {int dev; } ;


 int H_SEND_CRQ ;
 int dev_dbg (int ,char*,long,...) ;
 int dma_wmb () ;
 long plpar_hcall_norets (int ,int ,int ,int ) ;
 struct vio_dev* to_vio_dev (int ) ;

__attribute__((used)) static long ibmvmc_send_crq(struct crq_server_adapter *adapter,
       u64 word1, u64 word2)
{
 struct vio_dev *vdev = to_vio_dev(adapter->dev);
 long rc = 0;

 dev_dbg(adapter->dev, "(0x%x, 0x%016llx, 0x%016llx)\n",
  vdev->unit_address, word1, word2);





 dma_wmb();
 rc = plpar_hcall_norets(H_SEND_CRQ, vdev->unit_address, word1, word2);
 dev_dbg(adapter->dev, "rc = 0x%lx\n", rc);

 return rc;
}
