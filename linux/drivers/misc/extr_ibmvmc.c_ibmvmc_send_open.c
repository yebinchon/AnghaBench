
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ibmvmc_hmc {int index; int session; int state; struct crq_server_adapter* adapter; } ;
struct TYPE_6__ {scalar_t__ rsvd; } ;
struct TYPE_5__ {int buffer_id; } ;
struct TYPE_4__ {scalar_t__ rsvd; } ;
struct ibmvmc_crq_msg {int valid; TYPE_3__ var3; scalar_t__ rsvd; TYPE_2__ var2; int hmc_index; int hmc_session; TYPE_1__ var1; scalar_t__ status; int type; } ;
struct ibmvmc_buffer {int id; scalar_t__ dma_addr_remote; scalar_t__ dma_addr_local; scalar_t__ size; } ;
struct crq_server_adapter {int dev; scalar_t__ riobn; scalar_t__ liobn; } ;
typedef int __be64 ;


 int EIO ;
 int VMC_MSG_OPEN ;
 int be64_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int dev_dbg (int ,char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int dev_err (int ,char*,int) ;
 int h_copy_rdma (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ibmhmc_state_opening ;
 int ibmvmc_send_crq (struct crq_server_adapter*,int ,int ) ;

__attribute__((used)) static int ibmvmc_send_open(struct ibmvmc_buffer *buffer,
       struct ibmvmc_hmc *hmc)
{
 struct ibmvmc_crq_msg crq_msg;
 struct crq_server_adapter *adapter;
 __be64 *crq_as_u64 = (__be64 *)&crq_msg;
 int rc = 0;

 if (!hmc || !hmc->adapter)
  return -EIO;

 adapter = hmc->adapter;

 dev_dbg(adapter->dev, "send_open: 0x%lx 0x%lx 0x%lx 0x%lx 0x%lx\n",
  (unsigned long)buffer->size, (unsigned long)adapter->liobn,
  (unsigned long)buffer->dma_addr_local,
  (unsigned long)adapter->riobn,
  (unsigned long)buffer->dma_addr_remote);

 rc = h_copy_rdma(buffer->size,
    adapter->liobn,
    buffer->dma_addr_local,
    adapter->riobn,
    buffer->dma_addr_remote);
 if (rc) {
  dev_err(adapter->dev, "Error: In send_open, h_copy_rdma rc 0x%x\n",
   rc);
  return -EIO;
 }

 hmc->state = ibmhmc_state_opening;

 crq_msg.valid = 0x80;
 crq_msg.type = VMC_MSG_OPEN;
 crq_msg.status = 0;
 crq_msg.var1.rsvd = 0;
 crq_msg.hmc_session = hmc->session;
 crq_msg.hmc_index = hmc->index;
 crq_msg.var2.buffer_id = cpu_to_be16(buffer->id);
 crq_msg.rsvd = 0;
 crq_msg.var3.rsvd = 0;

 ibmvmc_send_crq(adapter, be64_to_cpu(crq_as_u64[0]),
   be64_to_cpu(crq_as_u64[1]));

 return rc;
}
