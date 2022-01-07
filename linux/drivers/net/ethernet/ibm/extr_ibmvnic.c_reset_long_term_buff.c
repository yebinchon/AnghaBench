
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_long_term_buff {int size; int map_id; int addr; int buff; } ;
struct ibmvnic_adapter {TYPE_1__* vdev; scalar_t__ fw_done_rc; int fw_done; } ;
struct TYPE_2__ {int dev; } ;


 int alloc_long_term_buff (struct ibmvnic_adapter*,struct ibmvnic_long_term_buff*,int ) ;
 int dev_info (int *,char*) ;
 int free_long_term_buff (struct ibmvnic_adapter*,struct ibmvnic_long_term_buff*) ;
 int init_completion (int *) ;
 int memset (int ,int ,int ) ;
 int send_request_map (struct ibmvnic_adapter*,int ,int ,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int reset_long_term_buff(struct ibmvnic_adapter *adapter,
    struct ibmvnic_long_term_buff *ltb)
{
 int rc;

 memset(ltb->buff, 0, ltb->size);

 init_completion(&adapter->fw_done);
 rc = send_request_map(adapter, ltb->addr, ltb->size, ltb->map_id);
 if (rc)
  return rc;
 wait_for_completion(&adapter->fw_done);

 if (adapter->fw_done_rc) {
  dev_info(&adapter->vdev->dev,
    "Reset failed, attempting to free and reallocate buffer\n");
  free_long_term_buff(adapter, ltb);
  return alloc_long_term_buff(adapter, ltb, ltb->size);
 }
 return 0;
}
