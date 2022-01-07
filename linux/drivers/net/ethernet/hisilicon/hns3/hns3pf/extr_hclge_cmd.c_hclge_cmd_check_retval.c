
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int desc_num; struct hclge_desc* desc; } ;
struct TYPE_4__ {int last_status; TYPE_1__ csq; } ;
struct hclge_hw {TYPE_2__ cmq; } ;
struct hclge_desc {int retval; int opcode; } ;


 int hclge_cmd_convert_err_code (int ) ;
 int hclge_is_special_opcode (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int hclge_cmd_check_retval(struct hclge_hw *hw, struct hclge_desc *desc,
      int num, int ntc)
{
 u16 opcode, desc_ret;
 int handle;

 opcode = le16_to_cpu(desc[0].opcode);
 for (handle = 0; handle < num; handle++) {
  desc[handle] = hw->cmq.csq.desc[ntc];
  ntc++;
  if (ntc >= hw->cmq.csq.desc_num)
   ntc = 0;
 }
 if (likely(!hclge_is_special_opcode(opcode)))
  desc_ret = le16_to_cpu(desc[num - 1].retval);
 else
  desc_ret = le16_to_cpu(desc[0].retval);

 hw->cmq.last_status = desc_ret;

 return hclge_cmd_convert_err_code(desc_ret);
}
