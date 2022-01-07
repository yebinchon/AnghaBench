
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct ena_com_admin_queue {int dummy; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;
struct ena_admin_get_feat_resp {int dummy; } ;
struct TYPE_6__ {int feature_id; int feature_version; } ;
struct TYPE_5__ {scalar_t__ length; int address; } ;
struct TYPE_4__ {scalar_t__ flags; int opcode; } ;
struct ena_admin_get_feat_cmd {TYPE_3__ feat_common; TYPE_2__ control_buffer; TYPE_1__ aq_common_descriptor; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct ena_admin_acq_entry {int dummy; } ;
typedef int get_cmd ;
typedef enum ena_admin_aq_feature_id { ____Placeholder_ena_admin_aq_feature_id } ena_admin_aq_feature_id ;
typedef int dma_addr_t ;


 scalar_t__ ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK ;
 int ENA_ADMIN_GET_FEATURE ;
 int EOPNOTSUPP ;
 int ena_com_check_supported_feature_id (struct ena_com_dev*,int) ;
 int ena_com_execute_admin_command (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,int,struct ena_admin_acq_entry*,int) ;
 int ena_com_mem_addr_set (struct ena_com_dev*,int *,int ) ;
 int memset (struct ena_admin_get_feat_cmd*,int,int) ;
 int pr_debug (char*,int) ;
 int pr_err (char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_get_feature_ex(struct ena_com_dev *ena_dev,
      struct ena_admin_get_feat_resp *get_resp,
      enum ena_admin_aq_feature_id feature_id,
      dma_addr_t control_buf_dma_addr,
      u32 control_buff_size,
      u8 feature_ver)
{
 struct ena_com_admin_queue *admin_queue;
 struct ena_admin_get_feat_cmd get_cmd;
 int ret;

 if (!ena_com_check_supported_feature_id(ena_dev, feature_id)) {
  pr_debug("Feature %d isn't supported\n", feature_id);
  return -EOPNOTSUPP;
 }

 memset(&get_cmd, 0x0, sizeof(get_cmd));
 admin_queue = &ena_dev->admin_queue;

 get_cmd.aq_common_descriptor.opcode = ENA_ADMIN_GET_FEATURE;

 if (control_buff_size)
  get_cmd.aq_common_descriptor.flags =
   ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK;
 else
  get_cmd.aq_common_descriptor.flags = 0;

 ret = ena_com_mem_addr_set(ena_dev,
       &get_cmd.control_buffer.address,
       control_buf_dma_addr);
 if (unlikely(ret)) {
  pr_err("memory address set failed\n");
  return ret;
 }

 get_cmd.control_buffer.length = control_buff_size;
 get_cmd.feat_common.feature_version = feature_ver;
 get_cmd.feat_common.feature_id = feature_id;

 ret = ena_com_execute_admin_command(admin_queue,
         (struct ena_admin_aq_entry *)
         &get_cmd,
         sizeof(get_cmd),
         (struct ena_admin_acq_entry *)
         get_resp,
         sizeof(*get_resp));

 if (unlikely(ret))
  pr_err("Failed to submit get_feature command %d error: %d\n",
         feature_id, ret);

 return ret;
}
