
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_local {int sleep; int regmap; } ;


 int at86rf230_awake (struct at86rf230_local*) ;
 int at86rf230_sleep (struct at86rf230_local*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static inline int
__at86rf230_read(struct at86rf230_local *lp,
   unsigned int addr, unsigned int *data)
{
 bool sleep = lp->sleep;
 int ret;


 if (sleep)
  at86rf230_awake(lp);

 ret = regmap_read(lp->regmap, addr, data);


 if (sleep)
  at86rf230_sleep(lp);

 return ret;
}
