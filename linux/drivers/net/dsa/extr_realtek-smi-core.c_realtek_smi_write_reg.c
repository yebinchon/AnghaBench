
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct realtek_smi {int cmd_write; int lock; } ;


 int realtek_smi_start (struct realtek_smi*) ;
 int realtek_smi_stop (struct realtek_smi*) ;
 int realtek_smi_write_byte (struct realtek_smi*,int) ;
 int realtek_smi_write_byte_noack (struct realtek_smi*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int realtek_smi_write_reg(struct realtek_smi *smi,
     u32 addr, u32 data, bool ack)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&smi->lock, flags);

 realtek_smi_start(smi);


 ret = realtek_smi_write_byte(smi, smi->cmd_write);
 if (ret)
  goto out;


 ret = realtek_smi_write_byte(smi, addr & 0xff);
 if (ret)
  goto out;


 ret = realtek_smi_write_byte(smi, addr >> 8);
 if (ret)
  goto out;


 ret = realtek_smi_write_byte(smi, data & 0xff);
 if (ret)
  goto out;


 if (ack)
  ret = realtek_smi_write_byte(smi, data >> 8);
 else
  ret = realtek_smi_write_byte_noack(smi, data >> 8);
 if (ret)
  goto out;

 ret = 0;

 out:
 realtek_smi_stop(smi);
 spin_unlock_irqrestore(&smi->lock, flags);

 return ret;
}
