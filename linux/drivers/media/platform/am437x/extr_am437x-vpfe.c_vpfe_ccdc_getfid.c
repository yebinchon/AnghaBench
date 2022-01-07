
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_ccdc {int dummy; } ;


 int VPFE_SYNMODE ;
 int vpfe_reg_read (struct vpfe_ccdc*,int ) ;

__attribute__((used)) static inline int vpfe_ccdc_getfid(struct vpfe_ccdc *ccdc)
{
 return (vpfe_reg_read(ccdc, VPFE_SYNMODE) >> 15) & 1;
}
