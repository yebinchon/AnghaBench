
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {long code; } ;
struct TYPE_6__ {TYPE_2__ rc; } ;
union ibmvnic_crq {TYPE_3__ request_unmap_rsp; } ;
struct ibmvnic_adapter {TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int dev_err (struct device*,char*,long) ;

__attribute__((used)) static void handle_request_unmap_rsp(union ibmvnic_crq *crq,
         struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;
 long rc;

 rc = crq->request_unmap_rsp.rc.code;
 if (rc)
  dev_err(dev, "Error %ld in REQUEST_UNMAP_RSP\n", rc);
}
