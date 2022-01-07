
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct realtek_smi {int dummy; } ;


 int realtek_smi_read_reg (struct realtek_smi*,int ,int *) ;

__attribute__((used)) static int realtek_smi_read(void *ctx, u32 reg, u32 *val)
{
 struct realtek_smi *smi = ctx;

 return realtek_smi_read_reg(smi, reg, val);
}
