
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_layer_config {scalar_t__ pixfmt; } ;
struct osd_window_state {int fb_base_phys; struct osd_layer_config lconfig; scalar_t__ is_enabled; } ;
struct osd_state {scalar_t__ yc_pixfmt; int lock; int field_inversion; int pingpong; struct osd_window_state* win; struct osd_osdwin_state* osdwin; int blink; int is_blinking; } ;
struct osd_osdwin_state {unsigned char* palette_map; int rec601_attenuation; int colorkey; scalar_t__ colorkey_blending; int blend; int clut; } ;
typedef enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 size_t OSDWIN_OSD0 ;
 size_t OSDWIN_OSD1 ;



 scalar_t__ PIXFMT_OSD_ATTR ;
 scalar_t__ PIXFMT_RGB888 ;
 int WIN_OSD0 ;
 int WIN_OSD1 ;
 size_t WIN_VID0 ;
 size_t WIN_VID1 ;
 int _osd_disable_color_key (struct osd_state*,size_t) ;
 int _osd_disable_layer (struct osd_state*,int) ;
 int _osd_disable_vid_rgb888 (struct osd_state*) ;
 int _osd_dm6446_vid0_pingpong (struct osd_state*,int ,int ,struct osd_layer_config*) ;
 int _osd_enable_color_key (struct osd_state*,size_t,int ,scalar_t__) ;
 int _osd_enable_vid_rgb888 (struct osd_state*,size_t) ;
 int _osd_set_blending_factor (struct osd_state*,size_t,int ) ;
 int _osd_set_blink_attribute (struct osd_state*,int ,int ) ;
 int _osd_set_layer_config (struct osd_state*,int,struct osd_layer_config*) ;
 int _osd_set_osd_clut (struct osd_state*,size_t,int ) ;
 int _osd_set_palette_map (struct osd_state*,int,unsigned char,unsigned char,scalar_t__) ;
 int _osd_set_rec601_attenuation (struct osd_state*,size_t,int ) ;
 scalar_t__ is_yc_pixfmt (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_layer_config (struct osd_state*,int,struct osd_layer_config*) ;

__attribute__((used)) static int osd_set_layer_config(struct osd_state *sd, enum osd_layer layer,
    struct osd_layer_config *lconfig)
{
 struct osd_state *osd = sd;
 struct osd_window_state *win = &osd->win[layer];
 struct osd_layer_config *cfg = &win->lconfig;
 unsigned long flags;
 int reject_config;

 spin_lock_irqsave(&osd->lock, flags);

 reject_config = try_layer_config(sd, layer, lconfig);
 if (reject_config) {
  spin_unlock_irqrestore(&osd->lock, flags);
  return reject_config;
 }


 if (is_yc_pixfmt(lconfig->pixfmt))
  osd->yc_pixfmt = lconfig->pixfmt;





 if (layer == WIN_OSD1) {
  if (((lconfig->pixfmt == PIXFMT_OSD_ATTR) &&
    (cfg->pixfmt != PIXFMT_OSD_ATTR)) ||
    ((lconfig->pixfmt != PIXFMT_OSD_ATTR) &&
    (cfg->pixfmt == PIXFMT_OSD_ATTR))) {
   win->is_enabled = 0;
   _osd_disable_layer(sd, layer);
  }
 }

 _osd_set_layer_config(sd, layer, lconfig);

 if (layer == WIN_OSD1) {
  struct osd_osdwin_state *osdwin_state =
      &osd->osdwin[OSDWIN_OSD1];

  if ((lconfig->pixfmt != PIXFMT_OSD_ATTR) &&
    (cfg->pixfmt == PIXFMT_OSD_ATTR)) {







   _osd_set_osd_clut(sd, OSDWIN_OSD1,
         osdwin_state->clut);
   _osd_set_blending_factor(sd, OSDWIN_OSD1,
         osdwin_state->blend);
   if (osdwin_state->colorkey_blending) {
    _osd_enable_color_key(sd, OSDWIN_OSD1,
              osdwin_state->
              colorkey,
              lconfig->pixfmt);
   } else
    _osd_disable_color_key(sd, OSDWIN_OSD1);
   _osd_set_rec601_attenuation(sd, OSDWIN_OSD1,
          osdwin_state->
          rec601_attenuation);
  } else if ((lconfig->pixfmt == PIXFMT_OSD_ATTR) &&
    (cfg->pixfmt != PIXFMT_OSD_ATTR)) {





   _osd_set_blink_attribute(sd, osd->is_blinking,
         osd->blink);
  }
 }





 if ((lconfig->pixfmt != cfg->pixfmt) &&
   ((lconfig->pixfmt == 130) ||
   (lconfig->pixfmt == 129) ||
   (lconfig->pixfmt == 128))) {
  enum osd_win_layer osdwin =
      ((layer == WIN_OSD0) ? OSDWIN_OSD0 : OSDWIN_OSD1);
  struct osd_osdwin_state *osdwin_state =
      &osd->osdwin[osdwin];
  unsigned char clut_index;
  unsigned char clut_entries = 0;

  switch (lconfig->pixfmt) {
  case 130:
   clut_entries = 2;
   break;
  case 129:
   clut_entries = 4;
   break;
  case 128:
   clut_entries = 16;
   break;
  default:
   break;
  }





  for (clut_index = 0; clut_index < 16; clut_index++) {
   osdwin_state->palette_map[clut_index] = clut_index;
   if (clut_index < clut_entries) {
    _osd_set_palette_map(sd, osdwin, clut_index,
           clut_index,
           lconfig->pixfmt);
   }
  }
 }

 *cfg = *lconfig;

 if (osd->win[WIN_VID0].lconfig.pixfmt == PIXFMT_RGB888)
  _osd_enable_vid_rgb888(sd, WIN_VID0);
 else if (osd->win[WIN_VID1].lconfig.pixfmt == PIXFMT_RGB888)
  _osd_enable_vid_rgb888(sd, WIN_VID1);
 else
  _osd_disable_vid_rgb888(sd);

 if (layer == WIN_VID0) {
  osd->pingpong =
      _osd_dm6446_vid0_pingpong(sd, osd->field_inversion,
             win->fb_base_phys,
             cfg);
 }

 spin_unlock_irqrestore(&osd->lock, flags);

 return 0;
}
