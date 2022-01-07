
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ generic; } ;
struct ibmvnic_adapter {int netdev; } ;
typedef int crq ;


 int IBMVNIC_CRQ_INIT ;
 int IBMVNIC_CRQ_INIT_CMD ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int memset (union ibmvnic_crq*,int ,int) ;
 int netdev_dbg (int ,char*) ;

__attribute__((used)) static int ibmvnic_send_crq_init(struct ibmvnic_adapter *adapter)
{
 union ibmvnic_crq crq;

 memset(&crq, 0, sizeof(crq));
 crq.generic.first = IBMVNIC_CRQ_INIT_CMD;
 crq.generic.cmd = IBMVNIC_CRQ_INIT;
 netdev_dbg(adapter->netdev, "Sending CRQ init\n");

 return ibmvnic_send_crq(adapter, &crq);
}
