
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_queue {int dummy; } ;


 unsigned int ionic_q_space_avail (struct ionic_queue*) ;

__attribute__((used)) static inline bool ionic_q_has_space(struct ionic_queue *q, unsigned int want)
{
 return ionic_q_space_avail(q) >= want;
}
