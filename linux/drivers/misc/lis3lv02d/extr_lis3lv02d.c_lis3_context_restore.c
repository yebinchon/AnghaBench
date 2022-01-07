
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int regs_size; int * reg_cache; int * regs; int (* write ) (struct lis3lv02d*,int ,int ) ;scalar_t__ regs_stored; } ;


 int stub1 (struct lis3lv02d*,int ,int ) ;

__attribute__((used)) static inline void lis3_context_restore(struct lis3lv02d *lis3)
{
 int i;
 if (lis3->regs_stored)
  for (i = 0; i < lis3->regs_size; i++)
   lis3->write(lis3, lis3->regs[i], lis3->reg_cache[i]);
}
