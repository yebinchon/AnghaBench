
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int* dphy; int mipi_enabled; int lane; int (* calc_dphy ) (struct mcam_camera*) ;} ;


 int CSI2_C0_ACT_LANE (int) ;
 int CSI2_C0_MIPI_EN ;
 int REG_CSI2_CTRL0 ;
 int REG_CSI2_DPHY3 ;
 int REG_CSI2_DPHY5 ;
 int REG_CSI2_DPHY6 ;
 int cam_dbg (struct mcam_camera*,char*,int,int,int) ;
 int cam_warn (struct mcam_camera*,char*) ;
 int mcam_reg_write (struct mcam_camera*,int ,int) ;
 int stub1 (struct mcam_camera*) ;

__attribute__((used)) static void mcam_enable_mipi(struct mcam_camera *mcam)
{

 if (mcam->calc_dphy)
  mcam->calc_dphy(mcam);
 cam_dbg(mcam, "camera: DPHY3=0x%x, DPHY5=0x%x, DPHY6=0x%x\n",
   mcam->dphy[0], mcam->dphy[1], mcam->dphy[2]);
 mcam_reg_write(mcam, REG_CSI2_DPHY3, mcam->dphy[0]);
 mcam_reg_write(mcam, REG_CSI2_DPHY5, mcam->dphy[1]);
 mcam_reg_write(mcam, REG_CSI2_DPHY6, mcam->dphy[2]);

 if (!mcam->mipi_enabled) {
  if (mcam->lane > 4 || mcam->lane <= 0) {
   cam_warn(mcam, "lane number error\n");
   mcam->lane = 1;
  }






  mcam_reg_write(mcam, REG_CSI2_CTRL0,
   CSI2_C0_MIPI_EN | CSI2_C0_ACT_LANE(mcam->lane));
  mcam->mipi_enabled = 1;
 }
}
