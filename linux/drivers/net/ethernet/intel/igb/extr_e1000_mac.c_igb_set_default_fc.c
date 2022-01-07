
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_9__ {int requested_mode; } ;
struct TYPE_7__ {scalar_t__ (* read ) (struct e1000_hw*,int,int,int*) ;} ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct TYPE_6__ {int func; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_4__ fc; TYPE_3__ nvm; TYPE_1__ bus; TYPE_5__ mac; } ;
typedef scalar_t__ s32 ;


 int NVM_82580_LAN_FUNC_OFFSET (int ) ;
 int NVM_INIT_CONTROL2_REG ;
 int NVM_WORD0F_ASM_DIR ;
 int NVM_WORD0F_PAUSE_MASK ;
 int e1000_fc_full ;
 int e1000_fc_none ;
 int e1000_fc_tx_pause ;
 scalar_t__ e1000_i350 ;
 int hw_dbg (char*) ;
 scalar_t__ stub1 (struct e1000_hw*,int,int,int*) ;

__attribute__((used)) static s32 igb_set_default_fc(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u16 lan_offset;
 u16 nvm_data;
 if (hw->mac.type == e1000_i350)
  lan_offset = NVM_82580_LAN_FUNC_OFFSET(hw->bus.func);
 else
  lan_offset = 0;

 ret_val = hw->nvm.ops.read(hw, NVM_INIT_CONTROL2_REG + lan_offset,
       1, &nvm_data);
 if (ret_val) {
  hw_dbg("NVM Read Error\n");
  goto out;
 }

 if ((nvm_data & NVM_WORD0F_PAUSE_MASK) == 0)
  hw->fc.requested_mode = e1000_fc_none;
 else if ((nvm_data & NVM_WORD0F_PAUSE_MASK) == NVM_WORD0F_ASM_DIR)
  hw->fc.requested_mode = e1000_fc_tx_pause;
 else
  hw->fc.requested_mode = e1000_fc_full;

out:
 return ret_val;
}
