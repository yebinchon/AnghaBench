
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct av7110 {int debilock; } ;


 int av7110_debiwrite (struct av7110*,int ,int,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void wdebi(struct av7110 *av7110, u32 config, int addr, u32 val, unsigned int count)
{
 unsigned long flags;

 spin_lock_irqsave(&av7110->debilock, flags);
 av7110_debiwrite(av7110, config, addr, val, count);
 spin_unlock_irqrestore(&av7110->debilock, flags);
}
