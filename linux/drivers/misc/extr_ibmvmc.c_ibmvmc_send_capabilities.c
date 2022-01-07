
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibmvmc_admin_crq_msg {int valid; void* version; void* crq_size; void* pool_size; int max_mtu; int max_hmc; scalar_t__* rsvd; scalar_t__ status; int type; } ;
struct TYPE_3__ {int size; } ;
struct crq_server_adapter {TYPE_1__ queue; int dev; } ;
typedef int __be64 ;
struct TYPE_4__ {int state; } ;


 int IBMVMC_PROTOCOL_VERSION ;
 int VMC_MSG_CAP ;
 int be64_to_cpu (int ) ;
 void* cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int dev_dbg (int ,char*) ;
 TYPE_2__ ibmvmc ;
 int ibmvmc_max_buf_pool_size ;
 int ibmvmc_max_hmcs ;
 int ibmvmc_max_mtu ;
 int ibmvmc_send_crq (struct crq_server_adapter*,int ,int ) ;
 int ibmvmc_state_capabilities ;

__attribute__((used)) static int ibmvmc_send_capabilities(struct crq_server_adapter *adapter)
{
 struct ibmvmc_admin_crq_msg crq_msg;
 __be64 *crq_as_u64 = (__be64 *)&crq_msg;

 dev_dbg(adapter->dev, "ibmvmc: CRQ send: capabilities\n");
 crq_msg.valid = 0x80;
 crq_msg.type = VMC_MSG_CAP;
 crq_msg.status = 0;
 crq_msg.rsvd[0] = 0;
 crq_msg.rsvd[1] = 0;
 crq_msg.max_hmc = ibmvmc_max_hmcs;
 crq_msg.max_mtu = cpu_to_be32(ibmvmc_max_mtu);
 crq_msg.pool_size = cpu_to_be16(ibmvmc_max_buf_pool_size);
 crq_msg.crq_size = cpu_to_be16(adapter->queue.size);
 crq_msg.version = cpu_to_be16(IBMVMC_PROTOCOL_VERSION);

 ibmvmc_send_crq(adapter, be64_to_cpu(crq_as_u64[0]),
   be64_to_cpu(crq_as_u64[1]));

 ibmvmc.state = ibmvmc_state_capabilities;

 return 0;
}
