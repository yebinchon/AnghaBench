
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int biu_lock; } ;
typedef int ef4_dword_t ;


 int EF4_PAGED_REG (unsigned int,unsigned int) ;
 int ef4_writed (struct ef4_nic*,int const*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void _ef4_writed_page_locked(struct ef4_nic *efx,
        const ef4_dword_t *value,
        unsigned int reg,
        unsigned int page)
{
 unsigned long flags __attribute__ ((unused));

 if (page == 0) {
  spin_lock_irqsave(&efx->biu_lock, flags);
  ef4_writed(efx, value, EF4_PAGED_REG(page, reg));
  spin_unlock_irqrestore(&efx->biu_lock, flags);
 } else {
  ef4_writed(efx, value, EF4_PAGED_REG(page, reg));
 }
}
