
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int mask; int (* int_handler ) (struct adapter*) ;scalar_t__ msg; scalar_t__ fatal; } ;
struct adapter {int pdev_dev; } ;


 int dev_alert (int ,char*,scalar_t__,unsigned int) ;
 int dev_warn (int ,char*,scalar_t__,unsigned int) ;
 scalar_t__ printk_ratelimit () ;
 int stub1 (struct adapter*) ;
 unsigned int t4_read_reg (struct adapter*,unsigned int) ;
 int t4_write_reg (struct adapter*,unsigned int,unsigned int) ;

__attribute__((used)) static int t4_handle_intr_status(struct adapter *adapter, unsigned int reg,
     const struct intr_info *acts)
{
 int fatal = 0;
 unsigned int mask = 0;
 unsigned int status = t4_read_reg(adapter, reg);

 for ( ; acts->mask; ++acts) {
  if (!(status & acts->mask))
   continue;
  if (acts->fatal) {
   fatal++;
   dev_alert(adapter->pdev_dev, "%s (0x%x)\n", acts->msg,
      status & acts->mask);
  } else if (acts->msg && printk_ratelimit())
   dev_warn(adapter->pdev_dev, "%s (0x%x)\n", acts->msg,
     status & acts->mask);
  if (acts->int_handler)
   acts->int_handler(adapter);
  mask |= acts->mask;
 }
 status &= mask;
 if (status)
  t4_write_reg(adapter, reg, status);
 return fatal;
}
