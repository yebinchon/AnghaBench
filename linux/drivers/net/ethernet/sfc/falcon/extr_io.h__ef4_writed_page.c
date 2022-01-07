
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
typedef int ef4_dword_t ;


 int EF4_PAGED_REG (unsigned int,unsigned int) ;
 int ef4_writed (struct ef4_nic*,int const*,int ) ;

__attribute__((used)) static inline void
_ef4_writed_page(struct ef4_nic *efx, const ef4_dword_t *value,
   unsigned int reg, unsigned int page)
{
 ef4_writed(efx, value, EF4_PAGED_REG(page, reg));
}
