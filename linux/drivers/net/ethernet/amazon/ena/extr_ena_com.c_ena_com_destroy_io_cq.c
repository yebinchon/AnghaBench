
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_com_io_cq {int idx; } ;
struct ena_com_admin_queue {int dummy; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct TYPE_2__ {int opcode; } ;
struct ena_admin_aq_destroy_cq_cmd {TYPE_1__ aq_common_descriptor; int cq_idx; } ;
struct ena_admin_acq_entry {int dummy; } ;
struct ena_admin_acq_destroy_cq_resp_desc {int dummy; } ;
typedef int destroy_resp ;
typedef int destroy_cmd ;


 int ENA_ADMIN_DESTROY_CQ ;
 int ENODEV ;
 int ena_com_execute_admin_command (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,int,struct ena_admin_acq_entry*,int) ;
 int memset (struct ena_admin_aq_destroy_cq_cmd*,int,int) ;
 int pr_err (char*,int) ;
 scalar_t__ unlikely (int) ;

int ena_com_destroy_io_cq(struct ena_com_dev *ena_dev,
     struct ena_com_io_cq *io_cq)
{
 struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
 struct ena_admin_aq_destroy_cq_cmd destroy_cmd;
 struct ena_admin_acq_destroy_cq_resp_desc destroy_resp;
 int ret;

 memset(&destroy_cmd, 0x0, sizeof(destroy_cmd));

 destroy_cmd.cq_idx = io_cq->idx;
 destroy_cmd.aq_common_descriptor.opcode = ENA_ADMIN_DESTROY_CQ;

 ret = ena_com_execute_admin_command(admin_queue,
         (struct ena_admin_aq_entry *)&destroy_cmd,
         sizeof(destroy_cmd),
         (struct ena_admin_acq_entry *)&destroy_resp,
         sizeof(destroy_resp));

 if (unlikely(ret && (ret != -ENODEV)))
  pr_err("Failed to destroy IO CQ. error: %d\n", ret);

 return ret;
}
