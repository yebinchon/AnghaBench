
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int mipi_enabled; } ;


 int REG_CSI2_CTRL0 ;
 int REG_CSI2_DPHY3 ;
 int REG_CSI2_DPHY5 ;
 int REG_CSI2_DPHY6 ;
 int mcam_reg_write (struct mcam_camera*,int ,int) ;

__attribute__((used)) static void mcam_disable_mipi(struct mcam_camera *mcam)
{

 mcam_reg_write(mcam, REG_CSI2_CTRL0, 0x0);
 mcam_reg_write(mcam, REG_CSI2_DPHY3, 0x0);
 mcam_reg_write(mcam, REG_CSI2_DPHY5, 0x0);
 mcam_reg_write(mcam, REG_CSI2_DPHY6, 0x0);
 mcam->mipi_enabled = 0;
}
