
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_state {scalar_t__ venc_type; } ;
struct v4l2_subdev {int dummy; } ;


 int VENC_CMPNT ;
 int VENC_CVBS ;
 int VENC_DACSEL ;
 int VENC_DCLKCTL ;
 int VENC_DRGBX1 ;
 int VENC_HINT ;
 int VENC_HSDLY ;
 int VENC_HSPLS ;
 int VENC_HSTART ;
 int VENC_HVALID ;
 int VENC_LCDOUT ;
 int VENC_OSDCLK0 ;
 int VENC_OSDCLK1 ;
 int VENC_SYNCCTL ;
 int VENC_VIDCTL ;
 int VENC_VINT ;
 int VENC_VMOD ;
 int VENC_VSDLY ;
 int VENC_VSPLS ;
 int VENC_VSTART ;
 int VENC_VSTARTA ;
 int VENC_VVALID ;
 int VENC_YCCCTL ;
 scalar_t__ VPBE_VERSION_3 ;
 int debug ;
 struct venc_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int ,int,struct v4l2_subdev*,char*) ;
 int venc_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static void venc_enabledigitaloutput(struct v4l2_subdev *sd, int benable)
{
 struct venc_state *venc = to_state(sd);

 v4l2_dbg(debug, 2, sd, "venc_enabledigitaloutput\n");

 if (benable) {
  venc_write(sd, VENC_VMOD, 0);
  venc_write(sd, VENC_CVBS, 0);
  venc_write(sd, VENC_LCDOUT, 0);
  venc_write(sd, VENC_HSPLS, 0);
  venc_write(sd, VENC_HSTART, 0);
  venc_write(sd, VENC_HVALID, 0);
  venc_write(sd, VENC_HINT, 0);
  venc_write(sd, VENC_VSPLS, 0);
  venc_write(sd, VENC_VSTART, 0);
  venc_write(sd, VENC_VVALID, 0);
  venc_write(sd, VENC_VINT, 0);
  venc_write(sd, VENC_YCCCTL, 0);
  venc_write(sd, VENC_DACSEL, 0);

 } else {
  venc_write(sd, VENC_VMOD, 0);

  venc_write(sd, VENC_VIDCTL, 0x141);


  venc_write(sd, VENC_SYNCCTL, 0);


  venc_write(sd, VENC_DCLKCTL, 0);
  venc_write(sd, VENC_DRGBX1, 0x0000057C);


  venc_write(sd, VENC_LCDOUT, 0);
  if (venc->venc_type != VPBE_VERSION_3)
   venc_write(sd, VENC_CMPNT, 0x100);
  venc_write(sd, VENC_HSPLS, 0);
  venc_write(sd, VENC_HINT, 0);
  venc_write(sd, VENC_HSTART, 0);
  venc_write(sd, VENC_HVALID, 0);

  venc_write(sd, VENC_VSPLS, 0);
  venc_write(sd, VENC_VINT, 0);
  venc_write(sd, VENC_VSTART, 0);
  venc_write(sd, VENC_VVALID, 0);

  venc_write(sd, VENC_HSDLY, 0);
  venc_write(sd, VENC_VSDLY, 0);

  venc_write(sd, VENC_YCCCTL, 0);
  venc_write(sd, VENC_VSTARTA, 0);


  venc_write(sd, VENC_OSDCLK0, 1);
  venc_write(sd, VENC_OSDCLK1, 2);
 }
}
