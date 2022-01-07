
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_layer_config {scalar_t__ pixfmt; int ysize; int xsize; int line_length; } ;
struct osd_window_state {int is_enabled; int fb_base_phys; int is_allocated; struct osd_layer_config lconfig; } ;
struct osd_state {int lock; int blink; int is_blinking; struct osd_window_state* win; } ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 scalar_t__ PIXFMT_OSD_ATTR ;
 int _osd_enable_attribute_mode (struct osd_state*) ;
 int _osd_enable_layer (struct osd_state*,int) ;
 int _osd_set_blink_attribute (struct osd_state*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int osd_enable_layer(struct osd_state *sd, enum osd_layer layer,
       int otherwin)
{
 struct osd_state *osd = sd;
 struct osd_window_state *win = &osd->win[layer];
 struct osd_layer_config *cfg = &win->lconfig;
 unsigned long flags;

 spin_lock_irqsave(&osd->lock, flags);





 if (!otherwin && (!win->is_allocated ||
   !win->fb_base_phys ||
   !cfg->line_length ||
   !cfg->xsize ||
   !cfg->ysize)) {
  spin_unlock_irqrestore(&osd->lock, flags);
  return -1;
 }

 if (win->is_enabled) {
  spin_unlock_irqrestore(&osd->lock, flags);
  return 0;
 }
 win->is_enabled = 1;

 if (cfg->pixfmt != PIXFMT_OSD_ATTR)
  _osd_enable_layer(sd, layer);
 else {
  _osd_enable_attribute_mode(sd);
  _osd_set_blink_attribute(sd, osd->is_blinking, osd->blink);
 }

 spin_unlock_irqrestore(&osd->lock, flags);

 return 0;
}
