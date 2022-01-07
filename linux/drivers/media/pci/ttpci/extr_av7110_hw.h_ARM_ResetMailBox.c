
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int debilock; } ;


 int DEBINOSWAP ;
 int IRQ_RX ;
 int av7110_debiread (struct av7110*,int ,int ,int) ;
 int av7110_debiwrite (struct av7110*,int ,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void ARM_ResetMailBox(struct av7110 *av7110)
{
 unsigned long flags;

 spin_lock_irqsave(&av7110->debilock, flags);
 av7110_debiread(av7110, DEBINOSWAP, IRQ_RX, 2);
 av7110_debiwrite(av7110, DEBINOSWAP, IRQ_RX, 0, 2);
 spin_unlock_irqrestore(&av7110->debilock, flags);
}
