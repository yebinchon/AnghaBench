
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvmc_crq_msg {int type; } ;
struct crq_server_adapter {int dev; } ;
struct TYPE_2__ {int state; } ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 TYPE_1__ ibmvmc ;
 int ibmvmc_add_buffer (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ;
 int ibmvmc_process_capabilities (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ;
 int ibmvmc_process_close_resp (struct ibmvmc_crq_msg*,struct crq_server_adapter*) ;
 int ibmvmc_process_open_resp (struct ibmvmc_crq_msg*,struct crq_server_adapter*) ;
 int ibmvmc_recv_msg (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ;
 int ibmvmc_rem_buffer (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ;
 int ibmvmc_state_capabilities ;
 int ibmvmc_validate_hmc_session (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ;

__attribute__((used)) static void ibmvmc_crq_process(struct crq_server_adapter *adapter,
          struct ibmvmc_crq_msg *crq)
{
 switch (crq->type) {
 case 135:
  dev_dbg(adapter->dev, "CRQ recv: capabilities resp (0x%x)\n",
   crq->type);
  if (ibmvmc.state == ibmvmc_state_capabilities)
   ibmvmc_process_capabilities(adapter, crq);
  else
   dev_warn(adapter->dev, "caps msg invalid in state 0x%x\n",
     ibmvmc.state);
  break;
 case 131:
  dev_dbg(adapter->dev, "CRQ recv: open resp (0x%x)\n",
   crq->type);
  if (ibmvmc_validate_hmc_session(adapter, crq) == 0)
   ibmvmc_process_open_resp(crq, adapter);
  break;
 case 138:
  dev_dbg(adapter->dev, "CRQ recv: add buf (0x%x)\n",
   crq->type);
  if (ibmvmc_validate_hmc_session(adapter, crq) == 0)
   ibmvmc_add_buffer(adapter, crq);
  break;
 case 130:
  dev_dbg(adapter->dev, "CRQ recv: rem buf (0x%x)\n",
   crq->type);
  if (ibmvmc_validate_hmc_session(adapter, crq) == 0)
   ibmvmc_rem_buffer(adapter, crq);
  break;
 case 128:
  dev_dbg(adapter->dev, "CRQ recv: signal msg (0x%x)\n",
   crq->type);
  if (ibmvmc_validate_hmc_session(adapter, crq) == 0)
   ibmvmc_recv_msg(adapter, crq);
  break;
 case 133:
  dev_dbg(adapter->dev, "CRQ recv: close resp (0x%x)\n",
   crq->type);
  if (ibmvmc_validate_hmc_session(adapter, crq) == 0)
   ibmvmc_process_close_resp(crq, adapter);
  break;
 case 136:
 case 132:
 case 134:
 case 137:
 case 129:
  dev_warn(adapter->dev, "CRQ recv: unexpected msg (0x%x)\n",
    crq->type);
  break;
 default:
  dev_warn(adapter->dev, "CRQ recv: unknown msg (0x%x)\n",
    crq->type);
  break;
 }
}
