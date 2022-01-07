
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ query_map; } ;
struct ibmvnic_adapter {int dummy; } ;
typedef int crq ;


 int IBMVNIC_CRQ_CMD ;
 int QUERY_MAP ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int memset (union ibmvnic_crq*,int ,int) ;

__attribute__((used)) static void send_map_query(struct ibmvnic_adapter *adapter)
{
 union ibmvnic_crq crq;

 memset(&crq, 0, sizeof(crq));
 crq.query_map.first = IBMVNIC_CRQ_CMD;
 crq.query_map.cmd = QUERY_MAP;
 ibmvnic_send_crq(adapter, &crq);
}
