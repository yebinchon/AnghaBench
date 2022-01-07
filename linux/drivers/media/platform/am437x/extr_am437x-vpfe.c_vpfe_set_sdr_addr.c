
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_ccdc {int dummy; } ;


 int VPFE_SDR_ADDR ;
 int vpfe_reg_write (struct vpfe_ccdc*,unsigned long,int ) ;

__attribute__((used)) static inline void vpfe_set_sdr_addr(struct vpfe_ccdc *ccdc, unsigned long addr)
{
 vpfe_reg_write(ccdc, addr & 0xffffffe0, VPFE_SDR_ADDR);
}
