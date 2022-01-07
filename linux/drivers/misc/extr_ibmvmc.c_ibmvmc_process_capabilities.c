
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvmc_crq_msg {int dummy; } ;
struct ibmvmc_admin_crq_msg {int max_hmc; int pool_size; int max_mtu; int version; } ;
struct crq_server_adapter {int dev; } ;
struct TYPE_2__ {void* max_hmc_index; void* max_buffer_pool_size; void* max_mtu; int state; } ;


 int IBMVMC_PROTOCOL_VERSION ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dev_err (int ,char*,int,int) ;
 int dev_info (int ,char*,void*,void*,void*) ;
 TYPE_1__ ibmvmc ;
 int ibmvmc_max_buf_pool_size ;
 int ibmvmc_max_hmcs ;
 int ibmvmc_max_mtu ;
 int ibmvmc_state_failed ;
 int ibmvmc_state_ready ;
 void* min_t (int ,int ,int) ;
 int u16 ;
 int u32 ;
 int u8 ;

__attribute__((used)) static void ibmvmc_process_capabilities(struct crq_server_adapter *adapter,
     struct ibmvmc_crq_msg *crqp)
{
 struct ibmvmc_admin_crq_msg *crq = (struct ibmvmc_admin_crq_msg *)crqp;

 if ((be16_to_cpu(crq->version) >> 8) !=
   (IBMVMC_PROTOCOL_VERSION >> 8)) {
  dev_err(adapter->dev, "init failed, incompatible versions 0x%x 0x%x\n",
   be16_to_cpu(crq->version),
   IBMVMC_PROTOCOL_VERSION);
  ibmvmc.state = ibmvmc_state_failed;
  return;
 }

 ibmvmc.max_mtu = min_t(u32, ibmvmc_max_mtu, be32_to_cpu(crq->max_mtu));
 ibmvmc.max_buffer_pool_size = min_t(u16, ibmvmc_max_buf_pool_size,
         be16_to_cpu(crq->pool_size));
 ibmvmc.max_hmc_index = min_t(u8, ibmvmc_max_hmcs, crq->max_hmc) - 1;
 ibmvmc.state = ibmvmc_state_ready;

 dev_info(adapter->dev, "Capabilities: mtu=0x%x, pool_size=0x%x, max_hmc=0x%x\n",
   ibmvmc.max_mtu, ibmvmc.max_buffer_pool_size,
   ibmvmc.max_hmc_index);
}
