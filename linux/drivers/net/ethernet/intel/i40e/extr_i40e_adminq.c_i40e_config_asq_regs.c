
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int pa; } ;
struct TYPE_5__ {TYPE_1__ desc_buf; int bal; int bah; int len; int tail; int head; } ;
struct TYPE_6__ {int num_asq_entries; TYPE_2__ asq; } ;
struct i40e_hw {TYPE_3__ aq; } ;
typedef int i40e_status ;


 int I40E_ERR_ADMIN_QUEUE_ERROR ;
 int I40E_PF_ATQLEN_ATQENABLE_MASK ;
 int lower_32_bits (int ) ;
 int rd32 (struct i40e_hw*,int ) ;
 int upper_32_bits (int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static i40e_status i40e_config_asq_regs(struct i40e_hw *hw)
{
 i40e_status ret_code = 0;
 u32 reg = 0;


 wr32(hw, hw->aq.asq.head, 0);
 wr32(hw, hw->aq.asq.tail, 0);


 wr32(hw, hw->aq.asq.len, (hw->aq.num_asq_entries |
      I40E_PF_ATQLEN_ATQENABLE_MASK));
 wr32(hw, hw->aq.asq.bal, lower_32_bits(hw->aq.asq.desc_buf.pa));
 wr32(hw, hw->aq.asq.bah, upper_32_bits(hw->aq.asq.desc_buf.pa));


 reg = rd32(hw, hw->aq.asq.bal);
 if (reg != lower_32_bits(hw->aq.asq.desc_buf.pa))
  ret_code = I40E_ERR_ADMIN_QUEUE_ERROR;

 return ret_code;
}
