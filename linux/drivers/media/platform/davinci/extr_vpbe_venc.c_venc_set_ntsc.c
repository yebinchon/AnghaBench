
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_state {scalar_t__ venc_type; struct venc_platform_data* pdata; } ;
struct venc_platform_data {scalar_t__ (* setup_clock ) (int ,int ) ;} ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int V4L2_STD_525_60 ;
 int VDAC_CONFIG_SD_V2 ;
 int VDAC_CONFIG_SD_V3 ;
 int VENC_CLKCTL ;
 int VENC_DACTST ;
 int VENC_VDPRO ;
 int VENC_VDPRO_DAFRQ ;
 int VENC_VDPRO_DAUPS ;
 int VENC_VIDCTL ;
 int VENC_VMOD ;
 int VENC_VMOD_TVTYP ;
 int VENC_VMOD_TVTYP_SHIFT ;
 int VENC_VMOD_VENC ;
 int VENC_VMOD_VIE ;
 int VENC_VMOD_VIE_SHIFT ;
 int VENC_VMOD_VMD ;
 int VENC_YCCCTL ;
 int VPBE_ENC_STD ;
 scalar_t__ VPBE_VERSION_2 ;
 scalar_t__ VPBE_VERSION_3 ;
 int VPSS_VENC_CLOCK_SEL ;
 int debug ;
 scalar_t__ stub1 (int ,int ) ;
 struct venc_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int ,int,struct v4l2_subdev*,char*) ;
 int vdaccfg_write (struct v4l2_subdev*,int ) ;
 int venc_enable_vpss_clock (scalar_t__,int ,int ) ;
 int venc_enabledigitaloutput (struct v4l2_subdev*,int ) ;
 int venc_modify (struct v4l2_subdev*,int ,int,int) ;
 int venc_write (struct v4l2_subdev*,int ,int) ;
 int vpss_enable_clock (int ,int) ;

__attribute__((used)) static int venc_set_ntsc(struct v4l2_subdev *sd)
{
 struct venc_state *venc = to_state(sd);
 struct venc_platform_data *pdata = venc->pdata;

 v4l2_dbg(debug, 2, sd, "venc_set_ntsc\n");


 vpss_enable_clock(VPSS_VENC_CLOCK_SEL, 1);
 if (pdata->setup_clock(VPBE_ENC_STD, V4L2_STD_525_60) < 0)
  return -EINVAL;

 venc_enable_vpss_clock(venc->venc_type, VPBE_ENC_STD, V4L2_STD_525_60);
 venc_enabledigitaloutput(sd, 0);

 if (venc->venc_type == VPBE_VERSION_3) {
  venc_write(sd, VENC_CLKCTL, 0x01);
  venc_write(sd, VENC_VIDCTL, 0);
  vdaccfg_write(sd, VDAC_CONFIG_SD_V3);
 } else if (venc->venc_type == VPBE_VERSION_2) {
  venc_write(sd, VENC_CLKCTL, 0x01);
  venc_write(sd, VENC_VIDCTL, 0);
  vdaccfg_write(sd, VDAC_CONFIG_SD_V2);
 } else {

  venc_modify(sd, VENC_VIDCTL, 0, 1 << 1);

  venc_write(sd, VENC_YCCCTL, 0x1);
  venc_modify(sd, VENC_VDPRO, 0, VENC_VDPRO_DAFRQ);
  venc_modify(sd, VENC_VDPRO, 0, VENC_VDPRO_DAUPS);
 }

 venc_write(sd, VENC_VMOD, 0);
 venc_modify(sd, VENC_VMOD, (1 << VENC_VMOD_VIE_SHIFT),
   VENC_VMOD_VIE);
 venc_modify(sd, VENC_VMOD, (0 << VENC_VMOD_VMD), VENC_VMOD_VMD);
 venc_modify(sd, VENC_VMOD, (0 << VENC_VMOD_TVTYP_SHIFT),
   VENC_VMOD_TVTYP);
 venc_write(sd, VENC_DACTST, 0x0);
 venc_modify(sd, VENC_VMOD, VENC_VMOD_VENC, VENC_VMOD_VENC);

 return 0;
}
