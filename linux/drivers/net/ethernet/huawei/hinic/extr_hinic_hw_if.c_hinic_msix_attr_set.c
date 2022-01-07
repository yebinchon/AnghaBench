
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct hinic_hwif {int attr; } ;


 int COALESC_TIMER ;
 int EINVAL ;
 int HINIC_CSR_MSIX_CTRL_ADDR (int ) ;
 int HINIC_MSIX_ATTR_SET (int ,int ) ;
 int LLI_CREDIT ;
 int LLI_TIMER ;
 int PENDING_LIMIT ;
 int RESEND_TIMER ;
 int VALID_MSIX_IDX (int *,int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int,int) ;

int hinic_msix_attr_set(struct hinic_hwif *hwif, u16 msix_index,
   u8 pending_limit, u8 coalesc_timer,
   u8 lli_timer, u8 lli_credit_limit,
   u8 resend_timer)
{
 u32 msix_ctrl, addr;

 if (!VALID_MSIX_IDX(&hwif->attr, msix_index))
  return -EINVAL;

 msix_ctrl = HINIC_MSIX_ATTR_SET(pending_limit, PENDING_LIMIT) |
      HINIC_MSIX_ATTR_SET(coalesc_timer, COALESC_TIMER) |
      HINIC_MSIX_ATTR_SET(lli_timer, LLI_TIMER) |
      HINIC_MSIX_ATTR_SET(lli_credit_limit, LLI_CREDIT) |
      HINIC_MSIX_ATTR_SET(resend_timer, RESEND_TIMER);

 addr = HINIC_CSR_MSIX_CTRL_ADDR(msix_index);

 hinic_hwif_write_reg(hwif, addr, msix_ctrl);
 return 0;
}
