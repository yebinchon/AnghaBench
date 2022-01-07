
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_8__ {int bus_id; int device; int func; } ;
struct i40e_hw {int debug_mask; TYPE_4__ bus; } ;
struct TYPE_6__ {int addr_low; int addr_high; } ;
struct TYPE_5__ {int param1; int param0; } ;
struct TYPE_7__ {TYPE_2__ external; TYPE_1__ internal; } ;
struct i40e_aq_desc {TYPE_3__ params; int cookie_low; int cookie_high; int retval; int datalen; int flags; int opcode; } ;
typedef int prefix ;
typedef enum i40e_debug_mask { ____Placeholder_i40e_debug_mask } i40e_debug_mask ;


 int DUMP_PREFIX_OFFSET ;
 int I40E_DEBUG_AQ_DESCRIPTOR ;
 int I40E_DEBUG_AQ_DESC_BUFFER ;
 int KERN_INFO ;
 int i40e_debug (struct i40e_hw*,int,char*,...) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,scalar_t__,int) ;
 int snprintf (char*,int,char*,int,int,int) ;

void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask, void *desc,
     void *buffer, u16 buf_len)
{
 struct i40e_aq_desc *aq_desc = (struct i40e_aq_desc *)desc;
 u32 effective_mask = hw->debug_mask & mask;
 char prefix[27];
 u16 len;
 u8 *buf = (u8 *)buffer;

 if (!effective_mask || !desc)
  return;

 len = le16_to_cpu(aq_desc->datalen);

 i40e_debug(hw, mask & I40E_DEBUG_AQ_DESCRIPTOR,
     "AQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\n",
     le16_to_cpu(aq_desc->opcode),
     le16_to_cpu(aq_desc->flags),
     le16_to_cpu(aq_desc->datalen),
     le16_to_cpu(aq_desc->retval));
 i40e_debug(hw, mask & I40E_DEBUG_AQ_DESCRIPTOR,
     "\tcookie (h,l) 0x%08X 0x%08X\n",
     le32_to_cpu(aq_desc->cookie_high),
     le32_to_cpu(aq_desc->cookie_low));
 i40e_debug(hw, mask & I40E_DEBUG_AQ_DESCRIPTOR,
     "\tparam (0,1)  0x%08X 0x%08X\n",
     le32_to_cpu(aq_desc->params.internal.param0),
     le32_to_cpu(aq_desc->params.internal.param1));
 i40e_debug(hw, mask & I40E_DEBUG_AQ_DESCRIPTOR,
     "\taddr (h,l)   0x%08X 0x%08X\n",
     le32_to_cpu(aq_desc->params.external.addr_high),
     le32_to_cpu(aq_desc->params.external.addr_low));

 if (buffer && buf_len != 0 && len != 0 &&
     (effective_mask & I40E_DEBUG_AQ_DESC_BUFFER)) {
  i40e_debug(hw, mask, "AQ CMD Buffer:\n");
  if (buf_len < len)
   len = buf_len;

  snprintf(prefix, sizeof(prefix),
    "i40e %02x:%02x.%x: \t0x",
    hw->bus.bus_id,
    hw->bus.device,
    hw->bus.func);

  print_hex_dump(KERN_INFO, prefix, DUMP_PREFIX_OFFSET,
          16, 1, buf, len, 0);
 }
}
