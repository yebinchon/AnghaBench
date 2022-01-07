
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct osd_state {int vpbe_type; } ;
struct osd_layer_config {int pixfmt; int line_length; int xpos; int xsize; int ypos; int ysize; int interlaced; } ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 int OSDWIN_OSD0 ;
 int OSDWIN_OSD1 ;
 int OSD_MISCCTL ;
 int OSD_MISCCTL_S420D ;
 int OSD_OSDWIN0MD ;
 int OSD_OSDWIN0MD_BMP0MD ;
 int OSD_OSDWIN0MD_BMP0MD_SHIFT ;
 int OSD_OSDWIN0MD_BMW0 ;
 int OSD_OSDWIN0MD_BMW0_SHIFT ;
 int OSD_OSDWIN0MD_OFF0 ;
 int OSD_OSDWIN0MD_RGB0E ;
 int OSD_OSDWIN0OFST ;
 int OSD_OSDWIN0XL ;
 int OSD_OSDWIN0XP ;
 int OSD_OSDWIN0YL ;
 int OSD_OSDWIN0YP ;
 int OSD_OSDWIN1MD ;
 int OSD_OSDWIN1MD_ATN1E ;
 int OSD_OSDWIN1MD_BLND1 ;
 int OSD_OSDWIN1MD_BMP1MD ;
 int OSD_OSDWIN1MD_BMP1MD_SHIFT ;
 int OSD_OSDWIN1MD_BMW1 ;
 int OSD_OSDWIN1MD_BMW1_SHIFT ;
 int OSD_OSDWIN1MD_CLUTS1 ;
 int OSD_OSDWIN1MD_OFF1 ;
 int OSD_OSDWIN1MD_RGB1E ;
 int OSD_OSDWIN1MD_TE1 ;
 int OSD_OSDWIN1OFST ;
 int OSD_OSDWIN1XL ;
 int OSD_OSDWIN1XP ;
 int OSD_OSDWIN1YL ;
 int OSD_OSDWIN1YP ;
 int OSD_VIDWIN0OFST ;
 int OSD_VIDWIN0XL ;
 int OSD_VIDWIN0XP ;
 int OSD_VIDWIN0YL ;
 int OSD_VIDWIN0YP ;
 int OSD_VIDWIN1OFST ;
 int OSD_VIDWIN1XL ;
 int OSD_VIDWIN1XP ;
 int OSD_VIDWIN1YL ;
 int OSD_VIDWIN1YP ;
 int OSD_VIDWINMD ;
 int OSD_VIDWINMD_VFF0 ;
 int OSD_VIDWINMD_VFF1 ;




 int PIXFMT_NV12 ;
 int PIXFMT_OSD_ATTR ;




 int VPBE_VERSION_1 ;
 int VPBE_VERSION_2 ;
 int VPBE_VERSION_3 ;




 int _osd_enable_rgb888_pixblend (struct osd_state*,int ) ;
 int _osd_set_cbcr_order (struct osd_state*,int) ;
 int osd_modify (struct osd_state*,int,int,int ) ;
 int osd_write (struct osd_state*,int,int ) ;

__attribute__((used)) static void _osd_set_layer_config(struct osd_state *sd, enum osd_layer layer,
      const struct osd_layer_config *lconfig)
{
 u32 winmd = 0, winmd_mask = 0, bmw = 0;

 _osd_set_cbcr_order(sd, lconfig->pixfmt);

 switch (layer) {
 case 131:
  if (sd->vpbe_type == VPBE_VERSION_1) {
   winmd_mask |= OSD_OSDWIN0MD_RGB0E;
   if (lconfig->pixfmt == 135)
    winmd |= OSD_OSDWIN0MD_RGB0E;
  } else if ((sd->vpbe_type == VPBE_VERSION_3) ||
    (sd->vpbe_type == VPBE_VERSION_2)) {
   winmd_mask |= OSD_OSDWIN0MD_BMP0MD;
   switch (lconfig->pixfmt) {
   case 135:
     winmd |= (1 <<
     OSD_OSDWIN0MD_BMP0MD_SHIFT);
     break;
   case 134:
    winmd |= (2 << OSD_OSDWIN0MD_BMP0MD_SHIFT);
    _osd_enable_rgb888_pixblend(sd, OSDWIN_OSD0);
    break;
   case 133:
   case 132:
    winmd |= (3 << OSD_OSDWIN0MD_BMP0MD_SHIFT);
    break;
   default:
    break;
   }
  }

  winmd_mask |= OSD_OSDWIN0MD_BMW0 | OSD_OSDWIN0MD_OFF0;

  switch (lconfig->pixfmt) {
  case 139:
   bmw = 0;
   break;
  case 138:
   bmw = 1;
   break;
  case 137:
   bmw = 2;
   break;
  case 136:
   bmw = 3;
   break;
  default:
   break;
  }
  winmd |= (bmw << OSD_OSDWIN0MD_BMW0_SHIFT);

  if (lconfig->interlaced)
   winmd |= OSD_OSDWIN0MD_OFF0;

  osd_modify(sd, winmd_mask, winmd, OSD_OSDWIN0MD);
  osd_write(sd, lconfig->line_length >> 5, OSD_OSDWIN0OFST);
  osd_write(sd, lconfig->xpos, OSD_OSDWIN0XP);
  osd_write(sd, lconfig->xsize, OSD_OSDWIN0XL);
  if (lconfig->interlaced) {
   osd_write(sd, lconfig->ypos >> 1, OSD_OSDWIN0YP);
   osd_write(sd, lconfig->ysize >> 1, OSD_OSDWIN0YL);
  } else {
   osd_write(sd, lconfig->ypos, OSD_OSDWIN0YP);
   osd_write(sd, lconfig->ysize, OSD_OSDWIN0YL);
  }
  break;
 case 129:
  winmd_mask |= OSD_VIDWINMD_VFF0;
  if (lconfig->interlaced)
   winmd |= OSD_VIDWINMD_VFF0;

  osd_modify(sd, winmd_mask, winmd, OSD_VIDWINMD);
  osd_write(sd, lconfig->line_length >> 5, OSD_VIDWIN0OFST);
  osd_write(sd, lconfig->xpos, OSD_VIDWIN0XP);
  osd_write(sd, lconfig->xsize, OSD_VIDWIN0XL);




  if ((sd->vpbe_type == VPBE_VERSION_2) &&
    (lconfig->pixfmt == PIXFMT_NV12)) {

   if (lconfig->interlaced) {
    winmd_mask |= OSD_VIDWINMD_VFF1;
    winmd |= OSD_VIDWINMD_VFF1;
    osd_modify(sd, winmd_mask, winmd,
       OSD_VIDWINMD);
   }

   osd_modify(sd, OSD_MISCCTL_S420D,
        OSD_MISCCTL_S420D, OSD_MISCCTL);
   osd_write(sd, lconfig->line_length >> 5,
      OSD_VIDWIN1OFST);
   osd_write(sd, lconfig->xpos, OSD_VIDWIN1XP);
   osd_write(sd, lconfig->xsize, OSD_VIDWIN1XL);





   if (lconfig->xsize % 32) {
    osd_write(sd,
       ((lconfig->xsize + 31) & ~31),
       OSD_VIDWIN1XL);
    osd_write(sd,
       ((lconfig->xsize + 31) & ~31),
       OSD_VIDWIN0XL);
   }
  } else if ((sd->vpbe_type == VPBE_VERSION_2) &&
    (lconfig->pixfmt != PIXFMT_NV12)) {
   osd_modify(sd, OSD_MISCCTL_S420D, ~OSD_MISCCTL_S420D,
      OSD_MISCCTL);
  }

  if (lconfig->interlaced) {
   osd_write(sd, lconfig->ypos >> 1, OSD_VIDWIN0YP);
   osd_write(sd, lconfig->ysize >> 1, OSD_VIDWIN0YL);
   if ((sd->vpbe_type == VPBE_VERSION_2) &&
    lconfig->pixfmt == PIXFMT_NV12) {
    osd_write(sd, lconfig->ypos >> 1,
       OSD_VIDWIN1YP);
    osd_write(sd, lconfig->ysize >> 1,
       OSD_VIDWIN1YL);
   }
  } else {
   osd_write(sd, lconfig->ypos, OSD_VIDWIN0YP);
   osd_write(sd, lconfig->ysize, OSD_VIDWIN0YL);
   if ((sd->vpbe_type == VPBE_VERSION_2) &&
    lconfig->pixfmt == PIXFMT_NV12) {
    osd_write(sd, lconfig->ypos, OSD_VIDWIN1YP);
    osd_write(sd, lconfig->ysize, OSD_VIDWIN1YL);
   }
  }
  break;
 case 130:





  if (lconfig->pixfmt == PIXFMT_OSD_ATTR) {
   if (sd->vpbe_type == VPBE_VERSION_1) {
    winmd_mask |= OSD_OSDWIN1MD_ATN1E |
    OSD_OSDWIN1MD_RGB1E | OSD_OSDWIN1MD_CLUTS1 |
    OSD_OSDWIN1MD_BLND1 | OSD_OSDWIN1MD_TE1;
   } else {
    winmd_mask |= OSD_OSDWIN1MD_BMP1MD |
    OSD_OSDWIN1MD_CLUTS1 | OSD_OSDWIN1MD_BLND1 |
    OSD_OSDWIN1MD_TE1;
   }
  } else {
   if (sd->vpbe_type == VPBE_VERSION_1) {
    winmd_mask |= OSD_OSDWIN1MD_RGB1E;
    if (lconfig->pixfmt == 135)
     winmd |= OSD_OSDWIN1MD_RGB1E;
   } else if ((sd->vpbe_type == VPBE_VERSION_3)
       || (sd->vpbe_type == VPBE_VERSION_2)) {
    winmd_mask |= OSD_OSDWIN1MD_BMP1MD;
    switch (lconfig->pixfmt) {
    case 135:
     winmd |=
         (1 << OSD_OSDWIN1MD_BMP1MD_SHIFT);
     break;
    case 134:
     winmd |=
         (2 << OSD_OSDWIN1MD_BMP1MD_SHIFT);
     _osd_enable_rgb888_pixblend(sd,
       OSDWIN_OSD1);
     break;
    case 133:
    case 132:
     winmd |=
         (3 << OSD_OSDWIN1MD_BMP1MD_SHIFT);
     break;
    default:
     break;
    }
   }

   winmd_mask |= OSD_OSDWIN1MD_BMW1;
   switch (lconfig->pixfmt) {
   case 139:
    bmw = 0;
    break;
   case 138:
    bmw = 1;
    break;
   case 137:
    bmw = 2;
    break;
   case 136:
    bmw = 3;
    break;
   default:
    break;
   }
   winmd |= (bmw << OSD_OSDWIN1MD_BMW1_SHIFT);
  }

  winmd_mask |= OSD_OSDWIN1MD_OFF1;
  if (lconfig->interlaced)
   winmd |= OSD_OSDWIN1MD_OFF1;

  osd_modify(sd, winmd_mask, winmd, OSD_OSDWIN1MD);
  osd_write(sd, lconfig->line_length >> 5, OSD_OSDWIN1OFST);
  osd_write(sd, lconfig->xpos, OSD_OSDWIN1XP);
  osd_write(sd, lconfig->xsize, OSD_OSDWIN1XL);
  if (lconfig->interlaced) {
   osd_write(sd, lconfig->ypos >> 1, OSD_OSDWIN1YP);
   osd_write(sd, lconfig->ysize >> 1, OSD_OSDWIN1YL);
  } else {
   osd_write(sd, lconfig->ypos, OSD_OSDWIN1YP);
   osd_write(sd, lconfig->ysize, OSD_OSDWIN1YL);
  }
  break;
 case 128:
  winmd_mask |= OSD_VIDWINMD_VFF1;
  if (lconfig->interlaced)
   winmd |= OSD_VIDWINMD_VFF1;

  osd_modify(sd, winmd_mask, winmd, OSD_VIDWINMD);
  osd_write(sd, lconfig->line_length >> 5, OSD_VIDWIN1OFST);
  osd_write(sd, lconfig->xpos, OSD_VIDWIN1XP);
  osd_write(sd, lconfig->xsize, OSD_VIDWIN1XL);




  if (sd->vpbe_type == VPBE_VERSION_2) {
   if (lconfig->pixfmt == PIXFMT_NV12) {

    if (lconfig->interlaced) {
     winmd_mask |= OSD_VIDWINMD_VFF0;
     winmd |= OSD_VIDWINMD_VFF0;
     osd_modify(sd, winmd_mask, winmd,
        OSD_VIDWINMD);
    }
    osd_modify(sd, OSD_MISCCTL_S420D,
        OSD_MISCCTL_S420D, OSD_MISCCTL);
    osd_write(sd, lconfig->line_length >> 5,
       OSD_VIDWIN0OFST);
    osd_write(sd, lconfig->xpos, OSD_VIDWIN0XP);
    osd_write(sd, lconfig->xsize, OSD_VIDWIN0XL);
   } else {
    osd_modify(sd, OSD_MISCCTL_S420D,
        ~OSD_MISCCTL_S420D, OSD_MISCCTL);
   }
  }

  if (lconfig->interlaced) {
   osd_write(sd, lconfig->ypos >> 1, OSD_VIDWIN1YP);
   osd_write(sd, lconfig->ysize >> 1, OSD_VIDWIN1YL);
   if ((sd->vpbe_type == VPBE_VERSION_2) &&
    lconfig->pixfmt == PIXFMT_NV12) {
    osd_write(sd, lconfig->ypos >> 1,
       OSD_VIDWIN0YP);
    osd_write(sd, lconfig->ysize >> 1,
       OSD_VIDWIN0YL);
   }
  } else {
   osd_write(sd, lconfig->ypos, OSD_VIDWIN1YP);
   osd_write(sd, lconfig->ysize, OSD_VIDWIN1YL);
   if ((sd->vpbe_type == VPBE_VERSION_2) &&
    lconfig->pixfmt == PIXFMT_NV12) {
    osd_write(sd, lconfig->ypos, OSD_VIDWIN0YP);
    osd_write(sd, lconfig->ysize, OSD_VIDWIN0YL);
   }
  }
  break;
 }
}
