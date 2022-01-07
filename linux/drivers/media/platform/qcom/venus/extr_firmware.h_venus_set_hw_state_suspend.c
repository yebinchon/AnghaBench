
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_core {int dummy; } ;


 int venus_set_hw_state (struct venus_core*,int) ;

__attribute__((used)) static inline int venus_set_hw_state_suspend(struct venus_core *core)
{
 return venus_set_hw_state(core, 0);
}
