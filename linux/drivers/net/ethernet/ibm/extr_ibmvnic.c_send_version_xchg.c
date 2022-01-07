
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ version_exchange; } ;
struct ibmvnic_adapter {int dummy; } ;
typedef int crq ;


 int IBMVNIC_CRQ_CMD ;
 int VERSION_EXCHANGE ;
 int cpu_to_be16 (int ) ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int ibmvnic_version ;
 int memset (union ibmvnic_crq*,int ,int) ;

__attribute__((used)) static int send_version_xchg(struct ibmvnic_adapter *adapter)
{
 union ibmvnic_crq crq;

 memset(&crq, 0, sizeof(crq));
 crq.version_exchange.first = IBMVNIC_CRQ_CMD;
 crq.version_exchange.cmd = VERSION_EXCHANGE;
 crq.version_exchange.version = cpu_to_be16(ibmvnic_version);

 return ibmvnic_send_crq(adapter, &crq);
}
