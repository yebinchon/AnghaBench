
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddcb {int* priv; } ;



__attribute__((used)) static inline void ddcb_mark_finished(struct ddcb *pddcb)
{
 pddcb->priv[6] = 0xff;
}
