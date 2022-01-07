
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ena_com_dev {int dummy; } ;


 int ENA_MMIO_READ_TIMEOUT ;
 int ENA_POLL_MS ;
 int ENA_REGS_DEV_STS_OFF ;
 int ENA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK ;
 int ETIME ;
 int ena_com_reg_bar_read32 (struct ena_com_dev*,int ) ;
 int msleep (int) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int wait_for_reset_state(struct ena_com_dev *ena_dev, u32 timeout,
    u16 exp_state)
{
 u32 val, i;


 timeout = (timeout * 100) / ENA_POLL_MS;

 for (i = 0; i < timeout; i++) {
  val = ena_com_reg_bar_read32(ena_dev, ENA_REGS_DEV_STS_OFF);

  if (unlikely(val == ENA_MMIO_READ_TIMEOUT)) {
   pr_err("Reg read timeout occurred\n");
   return -ETIME;
  }

  if ((val & ENA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK) ==
   exp_state)
   return 0;

  msleep(ENA_POLL_MS);
 }

 return -ETIME;
}
