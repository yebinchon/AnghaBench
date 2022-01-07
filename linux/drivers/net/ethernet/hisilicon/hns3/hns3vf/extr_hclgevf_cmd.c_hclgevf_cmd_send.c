
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct hclgevf_cmq_ring {int next_to_use; int desc_num; int lock; struct hclgevf_desc* desc; int next_to_clean; } ;
struct TYPE_4__ {scalar_t__ tx_timeout; int last_status; struct hclgevf_cmq_ring csq; } ;
struct hclgevf_hw {TYPE_2__ cmq; scalar_t__ hdev; } ;
struct hclgevf_dev {TYPE_1__* pdev; int state; } ;
struct hclgevf_desc {int retval; int flag; int opcode; } ;
typedef enum hclgevf_cmd_status { ____Placeholder_hclgevf_cmd_status } hclgevf_cmd_status ;
struct TYPE_3__ {int dev; } ;


 int EBADE ;
 int EBUSY ;
 int HCLGEVF_NIC_CSQ_HEAD_REG ;
 int HCLGEVF_NIC_CSQ_TAIL_REG ;
 scalar_t__ HCLGEVF_SEND_SYNC (scalar_t__) ;
 int HCLGEVF_STATE_CMD_DISABLE ;
 int dev_warn (int *,char*,int,int) ;
 int hclgevf_cmd_convert_err_code (scalar_t__) ;
 int hclgevf_cmd_csq_clean (struct hclgevf_hw*) ;
 scalar_t__ hclgevf_cmd_csq_done (struct hclgevf_hw*) ;
 int hclgevf_is_special_opcode (scalar_t__) ;
 int hclgevf_read_dev (struct hclgevf_hw*,int ) ;
 int hclgevf_ring_space (struct hclgevf_cmq_ring*) ;
 int hclgevf_write_dev (struct hclgevf_hw*,int ,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int udelay (int) ;

int hclgevf_cmd_send(struct hclgevf_hw *hw, struct hclgevf_desc *desc, int num)
{
 struct hclgevf_dev *hdev = (struct hclgevf_dev *)hw->hdev;
 struct hclgevf_cmq_ring *csq = &hw->cmq.csq;
 struct hclgevf_desc *desc_to_use;
 bool complete = 0;
 u32 timeout = 0;
 int handle = 0;
 int status = 0;
 u16 retval;
 u16 opcode;
 int ntc;

 spin_lock_bh(&hw->cmq.csq.lock);

 if (test_bit(HCLGEVF_STATE_CMD_DISABLE, &hdev->state)) {
  spin_unlock_bh(&hw->cmq.csq.lock);
  return -EBUSY;
 }

 if (num > hclgevf_ring_space(&hw->cmq.csq)) {



  csq->next_to_clean = hclgevf_read_dev(hw,
            HCLGEVF_NIC_CSQ_HEAD_REG);
  spin_unlock_bh(&hw->cmq.csq.lock);
  return -EBUSY;
 }




 ntc = hw->cmq.csq.next_to_use;
 opcode = le16_to_cpu(desc[0].opcode);
 while (handle < num) {
  desc_to_use = &hw->cmq.csq.desc[hw->cmq.csq.next_to_use];
  *desc_to_use = desc[handle];
  (hw->cmq.csq.next_to_use)++;
  if (hw->cmq.csq.next_to_use == hw->cmq.csq.desc_num)
   hw->cmq.csq.next_to_use = 0;
  handle++;
 }


 hclgevf_write_dev(hw, HCLGEVF_NIC_CSQ_TAIL_REG,
     hw->cmq.csq.next_to_use);




 if (HCLGEVF_SEND_SYNC(le16_to_cpu(desc->flag))) {
  do {
   if (hclgevf_cmd_csq_done(hw))
    break;
   udelay(1);
   timeout++;
  } while (timeout < hw->cmq.tx_timeout);
 }

 if (hclgevf_cmd_csq_done(hw)) {
  complete = 1;
  handle = 0;

  while (handle < num) {

   desc_to_use = &hw->cmq.csq.desc[ntc];
   desc[handle] = *desc_to_use;

   if (likely(!hclgevf_is_special_opcode(opcode)))
    retval = le16_to_cpu(desc[handle].retval);
   else
    retval = le16_to_cpu(desc[0].retval);

   status = hclgevf_cmd_convert_err_code(retval);
   hw->cmq.last_status = (enum hclgevf_cmd_status)retval;
   ntc++;
   handle++;
   if (ntc == hw->cmq.csq.desc_num)
    ntc = 0;
  }
 }

 if (!complete)
  status = -EBADE;


 handle = hclgevf_cmd_csq_clean(hw);
 if (handle != num)
  dev_warn(&hdev->pdev->dev,
    "cleaned %d, need to clean %d\n", handle, num);

 spin_unlock_bh(&hw->cmq.csq.lock);

 return status;
}
