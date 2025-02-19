
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long line_length; unsigned long ysize; scalar_t__ pixfmt; } ;
struct osd_window_state {TYPE_1__ lconfig; } ;
struct osd_state {scalar_t__ vpbe_type; struct osd_window_state* win; } ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 int OSD_OSDWIN0ADL ;
 unsigned long OSD_OSDWIN0ADL_O0AL ;
 int OSD_OSDWIN0ADR ;
 int OSD_OSDWIN0OFST ;
 int OSD_OSDWIN0OFST_O0AH ;
 int OSD_OSDWIN1ADL ;
 unsigned long OSD_OSDWIN1ADL_O1AL ;
 int OSD_OSDWIN1ADR ;
 int OSD_OSDWIN1OFST ;
 int OSD_OSDWIN1OFST_O1AH ;
 int OSD_OSDWINADH ;
 int OSD_OSDWINADH_O0AH ;
 unsigned long OSD_OSDWINADH_O0AH_SHIFT ;
 int OSD_OSDWINADH_O1AH ;
 unsigned long OSD_OSDWINADH_O1AH_SHIFT ;
 unsigned long OSD_SRCADD_ADD_SFT ;
 unsigned long OSD_SRCADD_OFSET_SFT ;
 unsigned long OSD_SRC_ADDR_HIGH4 ;
 unsigned long OSD_SRC_ADDR_HIGH7 ;
 int OSD_VIDWIN0ADL ;
 unsigned long OSD_VIDWIN0ADL_V0AL ;
 int OSD_VIDWIN0ADR ;
 int OSD_VIDWIN0OFST ;
 int OSD_VIDWIN0OFST_V0AH ;
 int OSD_VIDWIN1ADL ;
 unsigned long OSD_VIDWIN1ADL_V1AL ;
 int OSD_VIDWIN1ADR ;
 int OSD_VIDWIN1OFST ;
 int OSD_VIDWIN1OFST_V1AH ;
 int OSD_VIDWINADH ;
 int OSD_VIDWINADH_V0AH ;
 unsigned long OSD_VIDWINADH_V0AH_SHIFT ;
 int OSD_VIDWINADH_V1AH ;
 unsigned long OSD_VIDWINADH_V1AH_SHIFT ;
 unsigned long OSD_WINADL_MASK ;
 unsigned long OSD_WINOFST_AH_SHIFT ;
 unsigned long OSD_WINOFST_MASK ;
 scalar_t__ PIXFMT_NV12 ;
 unsigned long VPBE_REG_BASE ;
 scalar_t__ VPBE_VERSION_1 ;
 scalar_t__ VPBE_VERSION_2 ;
 scalar_t__ VPBE_VERSION_3 ;




 int osd_modify (struct osd_state*,int ,unsigned long,int ) ;
 int osd_write (struct osd_state*,unsigned long,int ) ;

__attribute__((used)) static void _osd_start_layer(struct osd_state *sd, enum osd_layer layer,
        unsigned long fb_base_phys,
        unsigned long cbcr_ofst)
{

 if (sd->vpbe_type == VPBE_VERSION_1) {
  switch (layer) {
  case 131:
   osd_write(sd, fb_base_phys & ~0x1F, OSD_OSDWIN0ADR);
   break;
  case 129:
   osd_write(sd, fb_base_phys & ~0x1F, OSD_VIDWIN0ADR);
   break;
  case 130:
   osd_write(sd, fb_base_phys & ~0x1F, OSD_OSDWIN1ADR);
   break;
  case 128:
   osd_write(sd, fb_base_phys & ~0x1F, OSD_VIDWIN1ADR);
   break;
       }
 } else if (sd->vpbe_type == VPBE_VERSION_3) {
  unsigned long fb_offset_32 =
      (fb_base_phys - VPBE_REG_BASE) >> 5;

  switch (layer) {
  case 131:
   osd_modify(sd, OSD_OSDWINADH_O0AH,
      fb_offset_32 >> (OSD_SRCADD_ADD_SFT -
         OSD_OSDWINADH_O0AH_SHIFT),
      OSD_OSDWINADH);
   osd_write(sd, fb_offset_32 & OSD_OSDWIN0ADL_O0AL,
      OSD_OSDWIN0ADL);
   break;
  case 129:
   osd_modify(sd, OSD_VIDWINADH_V0AH,
      fb_offset_32 >> (OSD_SRCADD_ADD_SFT -
         OSD_VIDWINADH_V0AH_SHIFT),
      OSD_VIDWINADH);
   osd_write(sd, fb_offset_32 & OSD_VIDWIN0ADL_V0AL,
      OSD_VIDWIN0ADL);
   break;
  case 130:
   osd_modify(sd, OSD_OSDWINADH_O1AH,
      fb_offset_32 >> (OSD_SRCADD_ADD_SFT -
         OSD_OSDWINADH_O1AH_SHIFT),
      OSD_OSDWINADH);
   osd_write(sd, fb_offset_32 & OSD_OSDWIN1ADL_O1AL,
      OSD_OSDWIN1ADL);
   break;
  case 128:
   osd_modify(sd, OSD_VIDWINADH_V1AH,
      fb_offset_32 >> (OSD_SRCADD_ADD_SFT -
         OSD_VIDWINADH_V1AH_SHIFT),
      OSD_VIDWINADH);
   osd_write(sd, fb_offset_32 & OSD_VIDWIN1ADL_V1AL,
      OSD_VIDWIN1ADL);
   break;
  }
 } else if (sd->vpbe_type == VPBE_VERSION_2) {
  struct osd_window_state *win = &sd->win[layer];
  unsigned long fb_offset_32, cbcr_offset_32;

  fb_offset_32 = fb_base_phys - VPBE_REG_BASE;
  if (cbcr_ofst)
   cbcr_offset_32 = cbcr_ofst;
  else
   cbcr_offset_32 = win->lconfig.line_length *
      win->lconfig.ysize;
  cbcr_offset_32 += fb_offset_32;
  fb_offset_32 = fb_offset_32 >> 5;
  cbcr_offset_32 = cbcr_offset_32 >> 5;




  if (win->lconfig.pixfmt == PIXFMT_NV12) {
   switch (layer) {
   case 129:
   case 128:

    osd_modify(sd, OSD_VIDWIN0OFST_V0AH,
      ((fb_offset_32 & OSD_SRC_ADDR_HIGH4) >>
      (OSD_SRCADD_OFSET_SFT -
      OSD_WINOFST_AH_SHIFT)) |
      OSD_WINOFST_MASK, OSD_VIDWIN0OFST);
    osd_modify(sd, OSD_VIDWINADH_V0AH,
       (fb_offset_32 & OSD_SRC_ADDR_HIGH7) >>
       (OSD_SRCADD_ADD_SFT -
       OSD_VIDWINADH_V0AH_SHIFT),
        OSD_VIDWINADH);
    osd_write(sd, fb_offset_32 & OSD_WINADL_MASK,
       OSD_VIDWIN0ADL);

    osd_modify(sd, OSD_VIDWIN1OFST_V1AH,
      ((cbcr_offset_32 &
      OSD_SRC_ADDR_HIGH4) >>
      (OSD_SRCADD_OFSET_SFT -
      OSD_WINOFST_AH_SHIFT)) |
      OSD_WINOFST_MASK, OSD_VIDWIN1OFST);
    osd_modify(sd, OSD_VIDWINADH_V1AH,
       (cbcr_offset_32 &
       OSD_SRC_ADDR_HIGH7) >>
       (OSD_SRCADD_ADD_SFT -
       OSD_VIDWINADH_V1AH_SHIFT),
       OSD_VIDWINADH);
    osd_write(sd, cbcr_offset_32 & OSD_WINADL_MASK,
       OSD_VIDWIN1ADL);
    break;
   default:
    break;
   }
  }

  switch (layer) {
  case 131:
   osd_modify(sd, OSD_OSDWIN0OFST_O0AH,
     ((fb_offset_32 & OSD_SRC_ADDR_HIGH4) >>
     (OSD_SRCADD_OFSET_SFT -
     OSD_WINOFST_AH_SHIFT)) | OSD_WINOFST_MASK,
      OSD_OSDWIN0OFST);
   osd_modify(sd, OSD_OSDWINADH_O0AH,
     (fb_offset_32 & OSD_SRC_ADDR_HIGH7) >>
     (OSD_SRCADD_ADD_SFT -
     OSD_OSDWINADH_O0AH_SHIFT), OSD_OSDWINADH);
   osd_write(sd, fb_offset_32 & OSD_WINADL_MASK,
     OSD_OSDWIN0ADL);
   break;
  case 129:
   if (win->lconfig.pixfmt != PIXFMT_NV12) {
    osd_modify(sd, OSD_VIDWIN0OFST_V0AH,
      ((fb_offset_32 & OSD_SRC_ADDR_HIGH4) >>
      (OSD_SRCADD_OFSET_SFT -
      OSD_WINOFST_AH_SHIFT)) |
      OSD_WINOFST_MASK, OSD_VIDWIN0OFST);
    osd_modify(sd, OSD_VIDWINADH_V0AH,
       (fb_offset_32 & OSD_SRC_ADDR_HIGH7) >>
       (OSD_SRCADD_ADD_SFT -
       OSD_VIDWINADH_V0AH_SHIFT),
       OSD_VIDWINADH);
    osd_write(sd, fb_offset_32 & OSD_WINADL_MASK,
       OSD_VIDWIN0ADL);
   }
   break;
  case 130:
   osd_modify(sd, OSD_OSDWIN1OFST_O1AH,
     ((fb_offset_32 & OSD_SRC_ADDR_HIGH4) >>
     (OSD_SRCADD_OFSET_SFT -
     OSD_WINOFST_AH_SHIFT)) | OSD_WINOFST_MASK,
      OSD_OSDWIN1OFST);
   osd_modify(sd, OSD_OSDWINADH_O1AH,
      (fb_offset_32 & OSD_SRC_ADDR_HIGH7) >>
      (OSD_SRCADD_ADD_SFT -
      OSD_OSDWINADH_O1AH_SHIFT),
      OSD_OSDWINADH);
   osd_write(sd, fb_offset_32 & OSD_WINADL_MASK,
     OSD_OSDWIN1ADL);
   break;
  case 128:
   if (win->lconfig.pixfmt != PIXFMT_NV12) {
    osd_modify(sd, OSD_VIDWIN1OFST_V1AH,
      ((fb_offset_32 & OSD_SRC_ADDR_HIGH4) >>
      (OSD_SRCADD_OFSET_SFT -
      OSD_WINOFST_AH_SHIFT)) |
      OSD_WINOFST_MASK, OSD_VIDWIN1OFST);
    osd_modify(sd, OSD_VIDWINADH_V1AH,
       (fb_offset_32 & OSD_SRC_ADDR_HIGH7) >>
       (OSD_SRCADD_ADD_SFT -
       OSD_VIDWINADH_V1AH_SHIFT),
       OSD_VIDWINADH);
    osd_write(sd, fb_offset_32 & OSD_WINADL_MASK,
       OSD_VIDWIN1ADL);
   }
   break;
  }
 }
}
