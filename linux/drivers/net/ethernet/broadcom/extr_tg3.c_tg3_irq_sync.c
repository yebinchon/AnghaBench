
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int irq_sync; } ;



__attribute__((used)) static inline int tg3_irq_sync(struct tg3 *tp)
{
 return tp->irq_sync;
}
