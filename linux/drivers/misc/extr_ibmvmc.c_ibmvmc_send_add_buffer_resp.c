
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ rsvd; } ;
struct TYPE_5__ {int buffer_id; } ;
struct TYPE_4__ {scalar_t__ rsvd; } ;
struct ibmvmc_crq_msg {int valid; TYPE_3__ var3; scalar_t__ rsvd; TYPE_2__ var2; void* hmc_index; void* hmc_session; TYPE_1__ var1; void* status; int type; } ;
struct crq_server_adapter {int dev; } ;
typedef int __be64 ;


 int VMC_MSG_ADD_BUF_RESP ;
 int be64_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int dev_dbg (int ,char*) ;
 int ibmvmc_send_crq (struct crq_server_adapter*,int ,int ) ;

__attribute__((used)) static int ibmvmc_send_add_buffer_resp(struct crq_server_adapter *adapter,
           u8 status, u8 hmc_session,
           u8 hmc_index, u16 buffer_id)
{
 struct ibmvmc_crq_msg crq_msg;
 __be64 *crq_as_u64 = (__be64 *)&crq_msg;

 dev_dbg(adapter->dev, "CRQ send: add_buffer_resp\n");
 crq_msg.valid = 0x80;
 crq_msg.type = VMC_MSG_ADD_BUF_RESP;
 crq_msg.status = status;
 crq_msg.var1.rsvd = 0;
 crq_msg.hmc_session = hmc_session;
 crq_msg.hmc_index = hmc_index;
 crq_msg.var2.buffer_id = cpu_to_be16(buffer_id);
 crq_msg.rsvd = 0;
 crq_msg.var3.rsvd = 0;

 ibmvmc_send_crq(adapter, be64_to_cpu(crq_as_u64[0]),
   be64_to_cpu(crq_as_u64[1]));

 return 0;
}
