
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vexpress_syscfg_func {int dummy; } ;


 int vexpress_syscfg_exec (struct vexpress_syscfg_func*,unsigned int,int,unsigned int*) ;

__attribute__((used)) static int vexpress_syscfg_write(void *context, unsigned int index,
  unsigned int val)
{
 struct vexpress_syscfg_func *func = context;

 return vexpress_syscfg_exec(func, index, 1, &val);
}
