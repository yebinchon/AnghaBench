
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmnand_controller {int dev; } ;


 int BRCMNAND_INTFC_STATUS ;
 int ETIMEDOUT ;
 unsigned long NAND_POLL_STATUS_TIMEOUT_MS ;
 int brcmnand_read_reg (struct brcmnand_controller*,int ) ;
 int cpu_relax () ;
 int dev_warn (int ,char*,int,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int bcmnand_ctrl_poll_status(struct brcmnand_controller *ctrl,
        u32 mask, u32 expected_val,
        unsigned long timeout_ms)
{
 unsigned long limit;
 u32 val;

 if (!timeout_ms)
  timeout_ms = NAND_POLL_STATUS_TIMEOUT_MS;

 limit = jiffies + msecs_to_jiffies(timeout_ms);
 do {
  val = brcmnand_read_reg(ctrl, BRCMNAND_INTFC_STATUS);
  if ((val & mask) == expected_val)
   return 0;

  cpu_relax();
 } while (time_after(limit, jiffies));

 dev_warn(ctrl->dev, "timeout on status poll (expected %x got %x)\n",
   expected_val, val & mask);

 return -ETIMEDOUT;
}
