
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ena_com_mmio_read {scalar_t__ reg_read_to; int seq_num; int lock; int readless_supported; struct ena_admin_ena_mmio_req_read_less_resp* read_resp; } ;
struct ena_com_dev {scalar_t__ reg_bar; struct ena_com_mmio_read mmio_read; } ;
struct ena_admin_ena_mmio_req_read_less_resp {int req_id; scalar_t__ reg_off; scalar_t__ reg_val; } ;


 scalar_t__ ENA_MMIO_READ_TIMEOUT ;
 scalar_t__ ENA_REGS_MMIO_REG_READ_OFF ;
 scalar_t__ ENA_REGS_MMIO_REG_READ_REG_OFF_MASK ;
 scalar_t__ ENA_REGS_MMIO_REG_READ_REG_OFF_SHIFT ;
 scalar_t__ ENA_REGS_MMIO_REG_READ_REQ_ID_MASK ;
 scalar_t__ ENA_REG_READ_TIMEOUT ;
 scalar_t__ READ_ONCE (int) ;
 int might_sleep () ;
 int pr_err (char*,...) ;
 scalar_t__ readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 ena_com_reg_bar_read32(struct ena_com_dev *ena_dev, u16 offset)
{
 struct ena_com_mmio_read *mmio_read = &ena_dev->mmio_read;
 volatile struct ena_admin_ena_mmio_req_read_less_resp *read_resp =
  mmio_read->read_resp;
 u32 mmio_read_reg, ret, i;
 unsigned long flags = 0;
 u32 timeout = mmio_read->reg_read_to;

 might_sleep();

 if (timeout == 0)
  timeout = ENA_REG_READ_TIMEOUT;


 if (!mmio_read->readless_supported)
  return readl(ena_dev->reg_bar + offset);

 spin_lock_irqsave(&mmio_read->lock, flags);
 mmio_read->seq_num++;

 read_resp->req_id = mmio_read->seq_num + 0xDEAD;
 mmio_read_reg = (offset << ENA_REGS_MMIO_REG_READ_REG_OFF_SHIFT) &
   ENA_REGS_MMIO_REG_READ_REG_OFF_MASK;
 mmio_read_reg |= mmio_read->seq_num &
   ENA_REGS_MMIO_REG_READ_REQ_ID_MASK;

 writel(mmio_read_reg, ena_dev->reg_bar + ENA_REGS_MMIO_REG_READ_OFF);

 for (i = 0; i < timeout; i++) {
  if (READ_ONCE(read_resp->req_id) == mmio_read->seq_num)
   break;

  udelay(1);
 }

 if (unlikely(i == timeout)) {
  pr_err("reading reg failed for timeout. expected: req id[%hu] offset[%hu] actual: req id[%hu] offset[%hu]\n",
         mmio_read->seq_num, offset, read_resp->req_id,
         read_resp->reg_off);
  ret = ENA_MMIO_READ_TIMEOUT;
  goto err;
 }

 if (read_resp->reg_off != offset) {
  pr_err("Read failure: wrong offset provided\n");
  ret = ENA_MMIO_READ_TIMEOUT;
 } else {
  ret = read_resp->reg_val;
 }
err:
 spin_unlock_irqrestore(&mmio_read->lock, flags);

 return ret;
}
