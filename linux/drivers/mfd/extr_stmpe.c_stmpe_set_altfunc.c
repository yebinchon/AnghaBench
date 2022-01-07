
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stmpe_variant_info {int af_bits; int (* get_altfunc ) (struct stmpe*,int) ;} ;
struct stmpe {int* regs; int num_gpios; int lock; struct stmpe_variant_info* variant; } ;
typedef enum stmpe_block { ____Placeholder_stmpe_block } stmpe_block ;


 int DIV_ROUND_UP (int,int) ;
 int STMPE_BLOCK_GPIO ;
 size_t STMPE_IDX_GPAFR_U_MSB ;
 int __ffs (int) ;
 int __stmpe_block_read (struct stmpe*,int,int,int*) ;
 int __stmpe_block_write (struct stmpe*,int,int,int*) ;
 int __stmpe_enable (struct stmpe*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct stmpe*,int) ;

int stmpe_set_altfunc(struct stmpe *stmpe, u32 pins, enum stmpe_block block)
{
 struct stmpe_variant_info *variant = stmpe->variant;
 u8 regaddr = stmpe->regs[STMPE_IDX_GPAFR_U_MSB];
 int af_bits = variant->af_bits;
 int numregs = DIV_ROUND_UP(stmpe->num_gpios * af_bits, 8);
 int mask = (1 << af_bits) - 1;
 u8 regs[8];
 int af, afperreg, ret;

 if (!variant->get_altfunc)
  return 0;

 afperreg = 8 / af_bits;
 mutex_lock(&stmpe->lock);

 ret = __stmpe_enable(stmpe, STMPE_BLOCK_GPIO);
 if (ret < 0)
  goto out;

 ret = __stmpe_block_read(stmpe, regaddr, numregs, regs);
 if (ret < 0)
  goto out;

 af = variant->get_altfunc(stmpe, block);

 while (pins) {
  int pin = __ffs(pins);
  int regoffset = numregs - (pin / afperreg) - 1;
  int pos = (pin % afperreg) * (8 / afperreg);

  regs[regoffset] &= ~(mask << pos);
  regs[regoffset] |= af << pos;

  pins &= ~(1 << pin);
 }

 ret = __stmpe_block_write(stmpe, regaddr, numregs, regs);

out:
 mutex_unlock(&stmpe->lock);
 return ret;
}
