
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_ccdc {int dummy; } ;


 int VPFE_PCR ;
 int vpfe_reg_write (struct vpfe_ccdc*,int,int ) ;

__attribute__((used)) static inline void vpfe_pcr_enable(struct vpfe_ccdc *ccdc, int flag)
{
 vpfe_reg_write(ccdc, !!flag, VPFE_PCR);
}
