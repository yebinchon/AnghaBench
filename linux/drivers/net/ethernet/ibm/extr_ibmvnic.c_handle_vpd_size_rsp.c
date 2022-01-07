
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int code; } ;
struct TYPE_8__ {int len; TYPE_3__ rc; } ;
union ibmvnic_crq {TYPE_4__ get_vpd_size_rsp; } ;
struct ibmvnic_adapter {int fw_done; TYPE_1__* vpd; TYPE_2__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_5__ {int len; } ;


 int be64_to_cpu (int ) ;
 int complete (int *) ;
 int dev_err (struct device*,char*,int ) ;

__attribute__((used)) static void handle_vpd_size_rsp(union ibmvnic_crq *crq,
    struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;

 if (crq->get_vpd_size_rsp.rc.code) {
  dev_err(dev, "Error retrieving VPD size, rc=%x\n",
   crq->get_vpd_size_rsp.rc.code);
  complete(&adapter->fw_done);
  return;
 }

 adapter->vpd->len = be64_to_cpu(crq->get_vpd_size_rsp.len);
 complete(&adapter->fw_done);
}
