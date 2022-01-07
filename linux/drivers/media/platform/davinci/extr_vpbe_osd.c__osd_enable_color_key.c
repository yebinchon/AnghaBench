
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int vpbe_type; } ;
typedef enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;
typedef enum osd_pix_format { ____Placeholder_osd_pix_format } osd_pix_format ;




 int OSD_OSDWIN0MD ;
 int OSD_OSDWIN0MD_TE0 ;
 int OSD_OSDWIN1MD ;
 int OSD_OSDWIN1MD_TE1 ;
 int OSD_TRANSPBMPIDX ;
 int OSD_TRANSPBMPIDX_BMP0 ;
 unsigned int OSD_TRANSPBMPIDX_BMP0_SHIFT ;
 int OSD_TRANSPBMPIDX_BMP1 ;
 unsigned int OSD_TRANSPBMPIDX_BMP1_SHIFT ;
 int OSD_TRANSPVAL ;
 int OSD_TRANSPVALL ;
 unsigned int OSD_TRANSPVALL_RGBL ;
 int OSD_TRANSPVALU ;
 int OSD_TRANSPVALU_RGBU ;
 int OSD_TRANSPVALU_Y ;
 unsigned int OSD_TRANSPVAL_RGBTRANS ;
 int VPBE_VERSION_1 ;
 int VPBE_VERSION_3 ;
 int osd_modify (struct osd_state*,int ,unsigned int,int ) ;
 int osd_set (struct osd_state*,int ,int ) ;
 int osd_write (struct osd_state*,unsigned int,int ) ;

__attribute__((used)) static void _osd_enable_color_key(struct osd_state *sd,
      enum osd_win_layer osdwin,
      unsigned colorkey,
      enum osd_pix_format pixfmt)
{
 switch (pixfmt) {
 case 135:
 case 134:
 case 133:
 case 132:
  if (sd->vpbe_type == VPBE_VERSION_3) {
   switch (osdwin) {
   case 137:
    osd_modify(sd, OSD_TRANSPBMPIDX_BMP0,
       colorkey <<
       OSD_TRANSPBMPIDX_BMP0_SHIFT,
       OSD_TRANSPBMPIDX);
    break;
   case 136:
    osd_modify(sd, OSD_TRANSPBMPIDX_BMP1,
       colorkey <<
       OSD_TRANSPBMPIDX_BMP1_SHIFT,
       OSD_TRANSPBMPIDX);
    break;
   }
  }
  break;
 case 131:
  if (sd->vpbe_type == VPBE_VERSION_1)
   osd_write(sd, colorkey & OSD_TRANSPVAL_RGBTRANS,
      OSD_TRANSPVAL);
  else if (sd->vpbe_type == VPBE_VERSION_3)
   osd_write(sd, colorkey & OSD_TRANSPVALL_RGBL,
      OSD_TRANSPVALL);
  break;
 case 129:
 case 128:
  if (sd->vpbe_type == VPBE_VERSION_3)
   osd_modify(sd, OSD_TRANSPVALU_Y, colorkey,
       OSD_TRANSPVALU);
  break;
 case 130:
  if (sd->vpbe_type == VPBE_VERSION_3) {
   osd_write(sd, colorkey & OSD_TRANSPVALL_RGBL,
      OSD_TRANSPVALL);
   osd_modify(sd, OSD_TRANSPVALU_RGBU, colorkey >> 16,
      OSD_TRANSPVALU);
  }
  break;
 default:
  break;
 }

 switch (osdwin) {
 case 137:
  osd_set(sd, OSD_OSDWIN0MD_TE0, OSD_OSDWIN0MD);
  break;
 case 136:
  osd_set(sd, OSD_OSDWIN1MD_TE1, OSD_OSDWIN1MD);
  break;
 }
}
