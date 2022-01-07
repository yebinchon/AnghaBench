
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddcb {int priv_64; } ;


 int cpu_to_be64 (int ) ;

__attribute__((used)) static inline void ddcb_mark_unused(struct ddcb *pddcb)
{
 pddcb->priv_64 = cpu_to_be64(0);
}
