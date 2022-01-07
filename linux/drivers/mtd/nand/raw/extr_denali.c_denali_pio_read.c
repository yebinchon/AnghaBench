
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct denali_controller {int caps; int (* host_read ) (struct denali_controller*,int) ;} ;


 int DENALI_BANK (struct denali_controller*) ;
 int DENALI_CAP_HW_ECC_FIXUP ;
 int DENALI_MAP01 ;
 int EBADMSG ;
 int EIO ;
 int INTR__ECC_ERR ;
 int INTR__ECC_UNCOR_ERR ;
 int INTR__ERASED_PAGE ;
 int INTR__PAGE_XFER_INC ;
 int denali_reset_irq (struct denali_controller*) ;
 int denali_wait_for_irq (struct denali_controller*,int) ;
 int memset (int*,int,size_t) ;
 int stub1 (struct denali_controller*,int) ;

__attribute__((used)) static int denali_pio_read(struct denali_controller *denali, u32 *buf,
      size_t size, int page)
{
 u32 addr = DENALI_MAP01 | DENALI_BANK(denali) | page;
 u32 irq_status, ecc_err_mask;
 int i;

 if (denali->caps & DENALI_CAP_HW_ECC_FIXUP)
  ecc_err_mask = INTR__ECC_UNCOR_ERR;
 else
  ecc_err_mask = INTR__ECC_ERR;

 denali_reset_irq(denali);

 for (i = 0; i < size / 4; i++)
  buf[i] = denali->host_read(denali, addr);

 irq_status = denali_wait_for_irq(denali, INTR__PAGE_XFER_INC);
 if (!(irq_status & INTR__PAGE_XFER_INC))
  return -EIO;

 if (irq_status & INTR__ERASED_PAGE)
  memset(buf, 0xff, size);

 return irq_status & ecc_err_mask ? -EBADMSG : 0;
}
