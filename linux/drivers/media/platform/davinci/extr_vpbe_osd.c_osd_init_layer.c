
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_layer_config {int pixfmt; scalar_t__ interlaced; scalar_t__ ypos; scalar_t__ xpos; scalar_t__ ysize; scalar_t__ xsize; scalar_t__ line_length; } ;
struct osd_window_state {scalar_t__ fb_base_phys; void* v_zoom; void* h_zoom; scalar_t__ is_enabled; struct osd_layer_config lconfig; } ;
struct osd_state {int lock; int yc_pixfmt; int blink; int is_blinking; struct osd_osdwin_state* osdwin; struct osd_window_state* win; } ;
struct osd_osdwin_state {int rec601_attenuation; int blend; int colorkey_blending; int clut; } ;
typedef enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 int BLINK_X1 ;
 int OSDWIN_OSD0 ;
 int OSDWIN_OSD1 ;
 int OSD_8_VID_0 ;
 int PIXFMT_8BPP ;
 int RAM_CLUT ;




 void* ZOOM_X1 ;
 int _osd_disable_color_key (struct osd_state*,int) ;
 int _osd_disable_layer (struct osd_state*,int) ;
 int _osd_set_blending_factor (struct osd_state*,int,int ) ;
 int _osd_set_layer_config (struct osd_state*,int,struct osd_layer_config*) ;
 int _osd_set_osd_clut (struct osd_state*,int,int ) ;
 int _osd_set_rec601_attenuation (struct osd_state*,int,int ) ;
 int _osd_set_zoom (struct osd_state*,int,void*,void*) ;
 int _osd_start_layer (struct osd_state*,int,scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void osd_init_layer(struct osd_state *sd, enum osd_layer layer)
{
 struct osd_state *osd = sd;
 struct osd_window_state *win = &osd->win[layer];
 enum osd_win_layer osdwin;
 struct osd_osdwin_state *osdwin_state;
 struct osd_layer_config *cfg = &win->lconfig;
 unsigned long flags;

 spin_lock_irqsave(&osd->lock, flags);

 win->is_enabled = 0;
 _osd_disable_layer(sd, layer);

 win->h_zoom = ZOOM_X1;
 win->v_zoom = ZOOM_X1;
 _osd_set_zoom(sd, layer, win->h_zoom, win->v_zoom);

 win->fb_base_phys = 0;
 _osd_start_layer(sd, layer, win->fb_base_phys, 0);

 cfg->line_length = 0;
 cfg->xsize = 0;
 cfg->ysize = 0;
 cfg->xpos = 0;
 cfg->ypos = 0;
 cfg->interlaced = 0;
 switch (layer) {
 case 131:
 case 130:
  osdwin = (layer == 131) ? OSDWIN_OSD0 : OSDWIN_OSD1;
  osdwin_state = &osd->osdwin[osdwin];





  cfg->pixfmt = PIXFMT_8BPP;
  _osd_set_layer_config(sd, layer, cfg);
  osdwin_state->clut = RAM_CLUT;
  _osd_set_osd_clut(sd, osdwin, osdwin_state->clut);
  osdwin_state->colorkey_blending = 0;
  _osd_disable_color_key(sd, osdwin);
  osdwin_state->blend = OSD_8_VID_0;
  _osd_set_blending_factor(sd, osdwin, osdwin_state->blend);
  osdwin_state->rec601_attenuation = 0;
  _osd_set_rec601_attenuation(sd, osdwin,
           osdwin_state->
           rec601_attenuation);
  if (osdwin == OSDWIN_OSD1) {
   osd->is_blinking = 0;
   osd->blink = BLINK_X1;
  }
  break;
 case 129:
 case 128:
  cfg->pixfmt = osd->yc_pixfmt;
  _osd_set_layer_config(sd, layer, cfg);
  break;
 }

 spin_unlock_irqrestore(&osd->lock, flags);
}
