
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_local {int sleep; int regmap; } ;


 int at86rf230_awake (struct at86rf230_local*) ;
 int at86rf230_sleep (struct at86rf230_local*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline int
at86rf230_write_subreg(struct at86rf230_local *lp,
         unsigned int addr, unsigned int mask,
         unsigned int shift, unsigned int data)
{
 bool sleep = lp->sleep;
 int ret;


 if (sleep)
  at86rf230_awake(lp);

 ret = regmap_update_bits(lp->regmap, addr, mask, data << shift);


 if (sleep)
  at86rf230_sleep(lp);

 return ret;
}
