
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
typedef int ef4_oword_t ;


 int ef4_reado (struct ef4_nic*,int *,unsigned int) ;

__attribute__((used)) static inline void ef4_reado_table(struct ef4_nic *efx, ef4_oword_t *value,
         unsigned int reg, unsigned int index)
{
 ef4_reado(efx, value, reg + index * sizeof(ef4_oword_t));
}
