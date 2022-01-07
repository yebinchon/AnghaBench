
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct realtek_smi {int dummy; } ;


 int realtek_smi_write_reg (struct realtek_smi*,int ,int ,int) ;

int realtek_smi_write_reg_noack(struct realtek_smi *smi, u32 addr,
    u32 data)
{
 return realtek_smi_write_reg(smi, addr, data, 0);
}
