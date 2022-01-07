
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_ccdc {int dummy; } ;


 int VPFE_IRQ_EOI ;
 int VPFE_IRQ_STS ;



 unsigned int vpfe_reg_read (struct vpfe_ccdc*,int ) ;
 int vpfe_reg_write (struct vpfe_ccdc*,int,int ) ;

__attribute__((used)) static void vpfe_clear_intr(struct vpfe_ccdc *ccdc, int vdint)
{
 unsigned int vpfe_int_status;

 vpfe_int_status = vpfe_reg_read(ccdc, VPFE_IRQ_STS);

 switch (vdint) {

 case 130:
  vpfe_int_status &= ~130;
  vpfe_int_status |= 130;
  break;


 case 129:
  vpfe_int_status &= ~129;
  vpfe_int_status |= 129;
  break;


 case 128:
  vpfe_int_status &= ~128;
  vpfe_int_status |= 128;
  break;


 default:
  vpfe_int_status &= ~(130 |
    129 |
    128);
  vpfe_int_status |= (130 |
    129 |
    128);
  break;
 }

 vpfe_reg_write(ccdc, vpfe_int_status, VPFE_IRQ_STS);

 vpfe_int_status = vpfe_reg_read(ccdc, VPFE_IRQ_STS);


 vpfe_reg_write(ccdc, 1, VPFE_IRQ_EOI);
}
