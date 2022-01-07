
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct realtek_smi {int cmd_read; int lock; } ;


 int realtek_smi_read_byte0 (struct realtek_smi*,scalar_t__*) ;
 int realtek_smi_read_byte1 (struct realtek_smi*,scalar_t__*) ;
 int realtek_smi_start (struct realtek_smi*) ;
 int realtek_smi_stop (struct realtek_smi*) ;
 int realtek_smi_write_byte (struct realtek_smi*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int realtek_smi_read_reg(struct realtek_smi *smi, u32 addr, u32 *data)
{
 unsigned long flags;
 u8 lo = 0;
 u8 hi = 0;
 int ret;

 spin_lock_irqsave(&smi->lock, flags);

 realtek_smi_start(smi);


 ret = realtek_smi_write_byte(smi, smi->cmd_read);
 if (ret)
  goto out;


 ret = realtek_smi_write_byte(smi, addr & 0xff);
 if (ret)
  goto out;


 ret = realtek_smi_write_byte(smi, addr >> 8);
 if (ret)
  goto out;


 realtek_smi_read_byte0(smi, &lo);

 realtek_smi_read_byte1(smi, &hi);

 *data = ((u32)lo) | (((u32)hi) << 8);

 ret = 0;

 out:
 realtek_smi_stop(smi);
 spin_unlock_irqrestore(&smi->lock, flags);

 return ret;
}
