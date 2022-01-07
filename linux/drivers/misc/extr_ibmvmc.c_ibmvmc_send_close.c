
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ibmvmc_hmc {int index; int session; struct crq_server_adapter* adapter; } ;
struct TYPE_6__ {scalar_t__ rsvd; } ;
struct TYPE_5__ {scalar_t__ rsvd; } ;
struct TYPE_4__ {scalar_t__ rsvd; } ;
struct ibmvmc_crq_msg {int valid; TYPE_3__ var3; scalar_t__ rsvd; TYPE_2__ var2; int hmc_index; int hmc_session; TYPE_1__ var1; scalar_t__ status; int type; } ;
struct crq_server_adapter {int dev; } ;
typedef int __be64 ;


 int EIO ;
 int VMC_MSG_CLOSE ;
 int be64_to_cpu (int ) ;
 int dev_info (int ,char*) ;
 int ibmvmc_send_crq (struct crq_server_adapter*,int ,int ) ;

__attribute__((used)) static int ibmvmc_send_close(struct ibmvmc_hmc *hmc)
{
 struct ibmvmc_crq_msg crq_msg;
 struct crq_server_adapter *adapter;
 __be64 *crq_as_u64 = (__be64 *)&crq_msg;
 int rc = 0;

 if (!hmc || !hmc->adapter)
  return -EIO;

 adapter = hmc->adapter;

 dev_info(adapter->dev, "CRQ send: close\n");

 crq_msg.valid = 0x80;
 crq_msg.type = VMC_MSG_CLOSE;
 crq_msg.status = 0;
 crq_msg.var1.rsvd = 0;
 crq_msg.hmc_session = hmc->session;
 crq_msg.hmc_index = hmc->index;
 crq_msg.var2.rsvd = 0;
 crq_msg.rsvd = 0;
 crq_msg.var3.rsvd = 0;

 ibmvmc_send_crq(adapter, be64_to_cpu(crq_as_u64[0]),
   be64_to_cpu(crq_as_u64[1]));

 return rc;
}
