
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dummy; } ;


 int GFCR_GPIO_ON ;
 int GGPIO_OUT ;
 int GGPIO_VAL ;
 int GPR_C0 ;
 int GPR_C0EN ;
 int GPR_C1EN ;
 int REG_GL_FCR ;
 int REG_GL_GPIOR ;
 int REG_GPR ;
 int mcam_reg_write (struct mcam_camera*,int ,int) ;

__attribute__((used)) static int cafe_ctlr_power_up(struct mcam_camera *mcam)
{




 mcam_reg_write(mcam, REG_GL_FCR, GFCR_GPIO_ON);
 mcam_reg_write(mcam, REG_GL_GPIOR, GGPIO_OUT|GGPIO_VAL);





 mcam_reg_write(mcam, REG_GPR, GPR_C1EN|GPR_C0EN);
 mcam_reg_write(mcam, REG_GPR, GPR_C1EN|GPR_C0EN|GPR_C0);

 return 0;
}
