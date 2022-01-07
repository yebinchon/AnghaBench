
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvmc_crq_msg {int valid; } ;
struct crq_server_adapter {int dev; } ;


 int dev_warn (int ,char*,...) ;
 int ibmvmc_crq_process (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ;
 int ibmvmc_handle_crq_init (struct ibmvmc_crq_msg*,struct crq_server_adapter*) ;
 int ibmvmc_reset (struct crq_server_adapter*,int) ;

__attribute__((used)) static void ibmvmc_handle_crq(struct ibmvmc_crq_msg *crq,
         struct crq_server_adapter *adapter)
{
 switch (crq->valid) {
 case 0xC0:
  ibmvmc_handle_crq_init(crq, adapter);
  break;
 case 0xFF:
  dev_warn(adapter->dev, "CRQ recv: virtual adapter failed - resetting.\n");
  ibmvmc_reset(adapter, 1);
  break;
 case 0x80:
  ibmvmc_crq_process(adapter, crq);
  break;
 default:
  dev_warn(adapter->dev, "CRQ recv: unknown msg 0x%02x.\n",
    crq->valid);
  break;
 }
}
