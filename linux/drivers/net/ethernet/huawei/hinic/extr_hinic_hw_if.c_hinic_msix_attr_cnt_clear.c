
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hinic_hwif {int attr; } ;


 int EINVAL ;
 int HINIC_CSR_MSIX_CNT_ADDR (int ) ;
 int HINIC_MSIX_CNT_SET (int,int ) ;
 int RESEND_TIMER ;
 int VALID_MSIX_IDX (int *,int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int ,int ) ;

int hinic_msix_attr_cnt_clear(struct hinic_hwif *hwif, u16 msix_index)
{
 u32 msix_ctrl, addr;

 if (!VALID_MSIX_IDX(&hwif->attr, msix_index))
  return -EINVAL;

 msix_ctrl = HINIC_MSIX_CNT_SET(1, RESEND_TIMER);
 addr = HINIC_CSR_MSIX_CNT_ADDR(msix_index);

 hinic_hwif_write_reg(hwif, addr, msix_ctrl);
 return 0;
}
