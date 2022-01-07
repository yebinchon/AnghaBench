
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvmc_crq_msg {unsigned char hmc_index; scalar_t__ status; } ;
struct crq_server_adapter {int dev; } ;
struct TYPE_2__ {unsigned char max_hmc_index; } ;


 int dev_warn (int ,char*,scalar_t__) ;
 int * hmcs ;
 TYPE_1__ ibmvmc ;
 int ibmvmc_reset (struct crq_server_adapter*,int) ;
 int ibmvmc_return_hmc (int *,int) ;

__attribute__((used)) static void ibmvmc_process_close_resp(struct ibmvmc_crq_msg *crq,
          struct crq_server_adapter *adapter)
{
 unsigned char hmc_index;

 hmc_index = crq->hmc_index;
 if (hmc_index > ibmvmc.max_hmc_index) {
  ibmvmc_reset(adapter, 0);
  return;
 }

 if (crq->status) {
  dev_warn(adapter->dev, "close_resp: failed - status 0x%x\n",
    crq->status);
  ibmvmc_reset(adapter, 0);
  return;
 }

 ibmvmc_return_hmc(&hmcs[hmc_index], 0);
}
