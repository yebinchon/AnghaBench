
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_state {int venc_type; struct venc_platform_data* pdata; } ;
struct venc_platform_data {scalar_t__ (* setup_clock ) (int ,int) ;} ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int HDTV_720P ;
 int VENC_OSDCLK0 ;
 int VENC_OSDCLK1 ;
 int VENC_VMOD ;
 int VENC_VMOD_HDMD ;
 int VENC_VMOD_TVTYP ;
 int VENC_VMOD_TVTYP_SHIFT ;
 int VENC_VMOD_VENC ;
 int VENC_VMOD_VIE ;
 int VENC_VMOD_VIE_SHIFT ;
 int VENC_XHINTVL ;
 int VPBE_ENC_DV_TIMINGS ;
 scalar_t__ stub1 (int ,int) ;
 struct venc_state* to_state (struct v4l2_subdev*) ;
 int venc_enable_vpss_clock (int ,int ,int) ;
 int venc_enabledigitaloutput (struct v4l2_subdev*,int ) ;
 int venc_modify (struct v4l2_subdev*,int ,int,int) ;
 int venc_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int venc_set_720p60_internal(struct v4l2_subdev *sd)
{
 struct venc_state *venc = to_state(sd);
 struct venc_platform_data *pdata = venc->pdata;

 if (pdata->setup_clock(VPBE_ENC_DV_TIMINGS, 74250000) < 0)
  return -EINVAL;

 venc_enable_vpss_clock(venc->venc_type, VPBE_ENC_DV_TIMINGS, 74250000);
 venc_enabledigitaloutput(sd, 0);

 venc_write(sd, VENC_OSDCLK0, 0);
 venc_write(sd, VENC_OSDCLK1, 1);

 venc_write(sd, VENC_VMOD, 0);

 venc_modify(sd, VENC_VMOD, (1 << VENC_VMOD_VIE_SHIFT),
     VENC_VMOD_VIE);
 venc_modify(sd, VENC_VMOD, VENC_VMOD_HDMD, VENC_VMOD_HDMD);
 venc_modify(sd, VENC_VMOD, (HDTV_720P << VENC_VMOD_TVTYP_SHIFT),
      VENC_VMOD_TVTYP);
 venc_modify(sd, VENC_VMOD, VENC_VMOD_VENC, VENC_VMOD_VENC);
 venc_write(sd, VENC_XHINTVL, 0);
 return 0;
}
