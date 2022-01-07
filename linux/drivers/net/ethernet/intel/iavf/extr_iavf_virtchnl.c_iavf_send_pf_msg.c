
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int asq_last_status; } ;
struct iavf_hw {TYPE_1__ aq; } ;
struct iavf_adapter {int flags; TYPE_2__* pdev; struct iavf_hw hw; } ;
typedef enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;
struct TYPE_4__ {int dev; } ;


 int IAVF_FLAG_PF_COMMS_FAILED ;
 int dev_dbg (int *,char*,int,int ,int ) ;
 int iavf_aq_send_msg_to_pf (struct iavf_hw*,int,int ,int *,int ,int *) ;
 int iavf_aq_str (struct iavf_hw*,int ) ;
 int iavf_stat_str (struct iavf_hw*,int) ;

__attribute__((used)) static int iavf_send_pf_msg(struct iavf_adapter *adapter,
       enum virtchnl_ops op, u8 *msg, u16 len)
{
 struct iavf_hw *hw = &adapter->hw;
 enum iavf_status err;

 if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
  return 0;

 err = iavf_aq_send_msg_to_pf(hw, op, 0, msg, len, ((void*)0));
 if (err)
  dev_dbg(&adapter->pdev->dev, "Unable to send opcode %d to PF, err %s, aq_err %s\n",
   op, iavf_stat_str(hw, err),
   iavf_aq_str(hw, hw->aq.asq_last_status));
 return err;
}
