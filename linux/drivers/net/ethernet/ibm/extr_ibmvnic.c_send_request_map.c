
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* len; void* ioba; int map_id; int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ request_map; } ;
typedef int u8 ;
typedef int u32 ;
struct ibmvnic_adapter {int dummy; } ;
typedef int dma_addr_t ;
typedef int crq ;


 int IBMVNIC_CRQ_CMD ;
 int REQUEST_MAP ;
 void* cpu_to_be32 (int ) ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int memset (union ibmvnic_crq*,int ,int) ;

__attribute__((used)) static int send_request_map(struct ibmvnic_adapter *adapter, dma_addr_t addr,
       u32 len, u8 map_id)
{
 union ibmvnic_crq crq;

 memset(&crq, 0, sizeof(crq));
 crq.request_map.first = IBMVNIC_CRQ_CMD;
 crq.request_map.cmd = REQUEST_MAP;
 crq.request_map.map_id = map_id;
 crq.request_map.ioba = cpu_to_be32(addr);
 crq.request_map.len = cpu_to_be32(len);
 return ibmvnic_send_crq(adapter, &crq);
}
