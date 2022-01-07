
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int error_cause; } ;
union ibmvnic_crq {TYPE_2__ error_indication; } ;
typedef int u16 ;
struct ibmvnic_adapter {TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int IBMVNIC_FATAL_ERROR ;
 int VNIC_RESET_FATAL ;
 int VNIC_RESET_NON_FATAL ;
 int be16_to_cpu (int ) ;
 int dev_warn_ratelimited (struct device*,char*,char*,int ) ;
 int ibmvnic_fw_err_cause (int ) ;
 int ibmvnic_reset (struct ibmvnic_adapter*,int ) ;

__attribute__((used)) static void handle_error_indication(union ibmvnic_crq *crq,
        struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;
 u16 cause;

 cause = be16_to_cpu(crq->error_indication.error_cause);

 dev_warn_ratelimited(dev,
        "Firmware reports %serror, cause: %s. Starting recovery...\n",
        crq->error_indication.flags
    & IBMVNIC_FATAL_ERROR ? "FATAL " : "",
        ibmvnic_fw_err_cause(cause));

 if (crq->error_indication.flags & IBMVNIC_FATAL_ERROR)
  ibmvnic_reset(adapter, VNIC_RESET_FATAL);
 else
  ibmvnic_reset(adapter, VNIC_RESET_NON_FATAL);
}
