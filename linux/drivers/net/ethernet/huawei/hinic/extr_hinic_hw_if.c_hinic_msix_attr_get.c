
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
 int HINIC_MSIX_ATTR_GET (int ,int ) ;
 int LLI_CREDIT ;
 int LLI_TIMER ;
 int PENDING_LIMIT ;
 int RESEND_TIMER ;
 int VALID_MSIX_IDX (int *,int ) ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;

int hinic_msix_attr_get(struct hinic_hwif *hwif, u16 msix_index,
   u8 *pending_limit, u8 *coalesc_timer,
   u8 *lli_timer, u8 *lli_credit_limit,
   u8 *resend_timer)
{
 u32 addr, val;

 if (!VALID_MSIX_IDX(&hwif->attr, msix_index))
  return -EINVAL;

 addr = HINIC_CSR_MSIX_CTRL_ADDR(msix_index);
 val = hinic_hwif_read_reg(hwif, addr);

 *pending_limit = HINIC_MSIX_ATTR_GET(val, PENDING_LIMIT);
 *coalesc_timer = HINIC_MSIX_ATTR_GET(val, COALESC_TIMER);
 *lli_timer = HINIC_MSIX_ATTR_GET(val, LLI_TIMER);
 *lli_credit_limit = HINIC_MSIX_ATTR_GET(val, LLI_CREDIT);
 *resend_timer = HINIC_MSIX_ATTR_GET(val, RESEND_TIMER);
 return 0;
}
