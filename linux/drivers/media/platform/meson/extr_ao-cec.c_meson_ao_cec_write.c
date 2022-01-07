
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef int u32 ;
struct meson_ao_cec_device {int cec_reg_lock; scalar_t__ base; } ;


 int CEC_RW_ADDR ;
 scalar_t__ CEC_RW_REG ;
 int CEC_RW_WRITE_EN ;
 int CEC_RW_WR_DATA ;
 int FIELD_PREP (int ,unsigned long) ;
 int meson_ao_cec_wait_busy (struct meson_ao_cec_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void meson_ao_cec_write(struct meson_ao_cec_device *ao_cec,
          unsigned long address, u8 data,
          int *res)
{
 unsigned long flags;
 u32 reg = FIELD_PREP(CEC_RW_ADDR, address) |
    FIELD_PREP(CEC_RW_WR_DATA, data) |
    CEC_RW_WRITE_EN;
 int ret = 0;

 if (res && *res)
  return;

 spin_lock_irqsave(&ao_cec->cec_reg_lock, flags);

 ret = meson_ao_cec_wait_busy(ao_cec);
 if (ret)
  goto write_out;

 writel_relaxed(reg, ao_cec->base + CEC_RW_REG);

write_out:
 spin_unlock_irqrestore(&ao_cec->cec_reg_lock, flags);

 if (res)
  *res = ret;
}
