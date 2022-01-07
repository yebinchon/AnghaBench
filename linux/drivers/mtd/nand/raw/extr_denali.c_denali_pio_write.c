
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct denali_controller {int (* host_write ) (struct denali_controller*,int,int const) ;} ;


 int DENALI_BANK (struct denali_controller*) ;
 int DENALI_MAP01 ;
 int EIO ;
 int INTR__PROGRAM_COMP ;
 int INTR__PROGRAM_FAIL ;
 int denali_reset_irq (struct denali_controller*) ;
 int denali_wait_for_irq (struct denali_controller*,int) ;
 int stub1 (struct denali_controller*,int,int const) ;

__attribute__((used)) static int denali_pio_write(struct denali_controller *denali, const u32 *buf,
       size_t size, int page)
{
 u32 addr = DENALI_MAP01 | DENALI_BANK(denali) | page;
 u32 irq_status;
 int i;

 denali_reset_irq(denali);

 for (i = 0; i < size / 4; i++)
  denali->host_write(denali, addr, buf[i]);

 irq_status = denali_wait_for_irq(denali,
      INTR__PROGRAM_COMP |
      INTR__PROGRAM_FAIL);
 if (!(irq_status & INTR__PROGRAM_COMP))
  return -EIO;

 return 0;
}
