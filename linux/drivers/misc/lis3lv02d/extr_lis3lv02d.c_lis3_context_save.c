
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int regs_size; int regs_stored; int * reg_cache; int * regs; int (* read ) (struct lis3lv02d*,int ,int *) ;} ;


 int stub1 (struct lis3lv02d*,int ,int *) ;

__attribute__((used)) static inline void lis3_context_save(struct lis3lv02d *lis3)
{
 int i;
 for (i = 0; i < lis3->regs_size; i++)
  lis3->read(lis3, lis3->regs[i], &lis3->reg_cache[i]);
 lis3->regs_stored = 1;
}
