
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; int first; } ;
union ibmvnic_crq {TYPE_1__ query_phys_parms; } ;
struct ibmvnic_adapter {scalar_t__ fw_done_rc; int fw_done; } ;
typedef int crq ;


 int EIO ;
 int IBMVNIC_CRQ_CMD ;
 int QUERY_PHYS_PARMS ;
 int ibmvnic_send_crq (struct ibmvnic_adapter*,union ibmvnic_crq*) ;
 int init_completion (int *) ;
 int memset (union ibmvnic_crq*,int ,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int send_query_phys_parms(struct ibmvnic_adapter *adapter)
{
 union ibmvnic_crq crq;
 int rc;

 memset(&crq, 0, sizeof(crq));
 crq.query_phys_parms.first = IBMVNIC_CRQ_CMD;
 crq.query_phys_parms.cmd = QUERY_PHYS_PARMS;
 init_completion(&adapter->fw_done);
 rc = ibmvnic_send_crq(adapter, &crq);
 if (rc)
  return rc;
 wait_for_completion(&adapter->fw_done);
 return adapter->fw_done_rc ? -EIO : 0;
}
