
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_hw {int dummy; } ;
struct iavf_aqc_queue_shutdown {int driver_unloading; } ;
struct TYPE_2__ {int raw; } ;
struct iavf_aq_desc {TYPE_1__ params; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int IAVF_AQ_DRIVER_UNLOADING ;
 int cpu_to_le32 (int ) ;
 int iavf_aqc_opc_queue_shutdown ;
 int iavf_asq_send_command (struct iavf_hw*,struct iavf_aq_desc*,int *,int ,int *) ;
 int iavf_fill_default_direct_cmd_desc (struct iavf_aq_desc*,int ) ;

enum iavf_status iavf_aq_queue_shutdown(struct iavf_hw *hw, bool unloading)
{
 struct iavf_aq_desc desc;
 struct iavf_aqc_queue_shutdown *cmd =
  (struct iavf_aqc_queue_shutdown *)&desc.params.raw;
 enum iavf_status status;

 iavf_fill_default_direct_cmd_desc(&desc, iavf_aqc_opc_queue_shutdown);

 if (unloading)
  cmd->driver_unloading = cpu_to_le32(IAVF_AQ_DRIVER_UNLOADING);
 status = iavf_asq_send_command(hw, &desc, ((void*)0), 0, ((void*)0));

 return status;
}
