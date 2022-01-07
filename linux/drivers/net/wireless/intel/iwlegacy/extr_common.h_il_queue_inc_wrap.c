
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
il_queue_inc_wrap(int idx, int n_bd)
{
 return ++idx & (n_bd - 1);
}
