
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int biu_lock; } ;
typedef int efx_dword_t ;


 int efx_paged_reg (struct efx_nic*,unsigned int,unsigned int) ;
 int efx_writed (struct efx_nic*,int const*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void _efx_writed_page_locked(struct efx_nic *efx,
        const efx_dword_t *value,
        unsigned int reg,
        unsigned int page)
{
 unsigned long flags __attribute__ ((unused));

 if (page == 0) {
  spin_lock_irqsave(&efx->biu_lock, flags);
  efx_writed(efx, value, efx_paged_reg(efx, page, reg));
  spin_unlock_irqrestore(&efx->biu_lock, flags);
 } else {
  efx_writed(efx, value, efx_paged_reg(efx, page, reg));
 }
}
