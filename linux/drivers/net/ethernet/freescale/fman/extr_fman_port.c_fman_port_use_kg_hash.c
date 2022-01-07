
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fman_port {TYPE_2__* bmi_regs; } ;
struct TYPE_3__ {int fmbm_rfpne; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;


 int NIA_BMI_AC_ENQ_FRAME ;
 int NIA_ENG_BMI ;
 int NIA_ENG_HWK ;
 int iowrite32be (int,int *) ;

void fman_port_use_kg_hash(struct fman_port *port, bool enable)
{
 if (enable)

  iowrite32be(NIA_ENG_HWK, &port->bmi_regs->rx.fmbm_rfpne);
 else

  iowrite32be(NIA_ENG_BMI | NIA_BMI_AC_ENQ_FRAME,
       &port->bmi_regs->rx.fmbm_rfpne);
}
