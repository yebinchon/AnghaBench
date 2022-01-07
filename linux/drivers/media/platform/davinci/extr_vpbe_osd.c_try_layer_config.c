
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_layer_config {int pixfmt; int line_length; int xsize; int ysize; int xpos; int ypos; int interlaced; } ;
struct osd_window_state {struct osd_layer_config lconfig; } ;
struct osd_state {scalar_t__ vpbe_type; struct osd_window_state* win; } ;
typedef enum osd_pix_format { ____Placeholder_osd_pix_format } osd_pix_format ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 scalar_t__ MAX_LINE_LENGTH ;
 scalar_t__ MAX_WIN_SIZE ;
 scalar_t__ VPBE_VERSION_1 ;
 scalar_t__ VPBE_VERSION_2 ;
 scalar_t__ VPBE_VERSION_3 ;
 int WIN_OSD0 ;
 int WIN_OSD1 ;
 int WIN_VID0 ;
 size_t WIN_VID1 ;
 int is_osd_win (int) ;
 scalar_t__ is_rgb_pixfmt (int) ;
 scalar_t__ is_vid_win (int) ;
 void* min (int,unsigned int) ;

__attribute__((used)) static int try_layer_config(struct osd_state *sd, enum osd_layer layer,
       struct osd_layer_config *lconfig)
{
 struct osd_state *osd = sd;
 struct osd_window_state *win = &osd->win[layer];
 int bad_config = 0;


 switch (lconfig->pixfmt) {
 case 137:
 case 136:
 case 135:
 case 134:
 case 131:
  if (osd->vpbe_type == VPBE_VERSION_1)
   bad_config = !is_vid_win(layer);
  break;
 case 129:
 case 128:
  bad_config = !is_vid_win(layer);
  break;
 case 130:
  if (osd->vpbe_type == VPBE_VERSION_1)
   bad_config = !is_vid_win(layer);
  else if ((osd->vpbe_type == VPBE_VERSION_3) ||
    (osd->vpbe_type == VPBE_VERSION_2))
   bad_config = !is_osd_win(layer);
  break;
 case 133:
  if (osd->vpbe_type != VPBE_VERSION_2)
   bad_config = 1;
  else
   bad_config = is_osd_win(layer);
  break;
 case 132:
  bad_config = (layer != WIN_OSD1);
  break;
 default:
  bad_config = 1;
  break;
 }
 if (bad_config) {




  *lconfig = win->lconfig;
  return bad_config;
 }



 if ((osd->vpbe_type == VPBE_VERSION_1) &&
     is_osd_win(layer) && is_rgb_pixfmt(lconfig->pixfmt)) {
  enum osd_pix_format pixfmt;

  if (layer == WIN_OSD0)
   pixfmt = osd->win[WIN_OSD1].lconfig.pixfmt;
  else
   pixfmt = osd->win[WIN_OSD0].lconfig.pixfmt;

  if (is_rgb_pixfmt(pixfmt)) {




   *lconfig = win->lconfig;
   return 1;
  }
 }


 if ((osd->vpbe_type == VPBE_VERSION_1) && is_vid_win(layer) &&
  lconfig->pixfmt == 130) {
  enum osd_pix_format pixfmt;

  if (layer == WIN_VID0)
   pixfmt = osd->win[WIN_VID1].lconfig.pixfmt;
  else
   pixfmt = osd->win[WIN_VID0].lconfig.pixfmt;

  if (pixfmt == 130) {




   *lconfig = win->lconfig;
   return 1;
  }
 }


 if (!lconfig->line_length || !lconfig->xsize || !lconfig->ysize) {
  *lconfig = win->lconfig;
  return 1;
 }


 lconfig->line_length = ((lconfig->line_length + 31) / 32) * 32;
 lconfig->line_length =
     min(lconfig->line_length, (unsigned)MAX_LINE_LENGTH);
 lconfig->xsize = min(lconfig->xsize, (unsigned)MAX_WIN_SIZE);
 lconfig->ysize = min(lconfig->ysize, (unsigned)MAX_WIN_SIZE);
 lconfig->xpos = min(lconfig->xpos, (unsigned)MAX_WIN_SIZE);
 lconfig->ypos = min(lconfig->ypos, (unsigned)MAX_WIN_SIZE);
 lconfig->interlaced = (lconfig->interlaced != 0);
 if (lconfig->interlaced) {

  lconfig->ysize &= ~1;
  lconfig->ypos &= ~1;
 }

 return 0;
}
