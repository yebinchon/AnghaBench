
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_layer_config {int dummy; } ;
struct osd_window_state {unsigned long fb_base_phys; struct osd_layer_config lconfig; } ;
struct osd_state {int lock; int field_inversion; int pingpong; struct osd_window_state* win; } ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 int WIN_VID0 ;
 int _osd_dm6446_vid0_pingpong (struct osd_state*,int ,unsigned long,struct osd_layer_config*) ;
 int _osd_start_layer (struct osd_state*,int,unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void osd_start_layer(struct osd_state *sd, enum osd_layer layer,
       unsigned long fb_base_phys,
       unsigned long cbcr_ofst)
{
 struct osd_state *osd = sd;
 struct osd_window_state *win = &osd->win[layer];
 struct osd_layer_config *cfg = &win->lconfig;
 unsigned long flags;

 spin_lock_irqsave(&osd->lock, flags);

 win->fb_base_phys = fb_base_phys & ~0x1F;
 _osd_start_layer(sd, layer, fb_base_phys, cbcr_ofst);

 if (layer == WIN_VID0) {
  osd->pingpong =
      _osd_dm6446_vid0_pingpong(sd, osd->field_inversion,
             win->fb_base_phys,
             cfg);
 }

 spin_unlock_irqrestore(&osd->lock, flags);
}
