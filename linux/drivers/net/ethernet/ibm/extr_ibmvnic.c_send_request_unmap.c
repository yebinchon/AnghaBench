
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map_id; int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ request_unmap; } ;
typedef int u8 ;
struct ibmvnic_adapter {int dummy; } ;
typedef int crq ;


 int IBMVNIC_CRQ_CMD ;
 int REQUEST_UNMAP ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int memset (union ibmvnic_crq*,int ,int) ;

__attribute__((used)) static int send_request_unmap(struct ibmvnic_adapter *adapter, u8 map_id)
{
 union ibmvnic_crq crq;

 memset(&crq, 0, sizeof(crq));
 crq.request_unmap.first = IBMVNIC_CRQ_CMD;
 crq.request_unmap.cmd = REQUEST_UNMAP;
 crq.request_unmap.map_id = map_id;
 return ibmvnic_send_crq(adapter, &crq);
}
