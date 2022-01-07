
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_window_state {scalar_t__ is_enabled; } ;
struct osd_state {int lock; struct osd_window_state* win; } ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 int _osd_disable_layer (struct osd_state*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void osd_disable_layer(struct osd_state *sd, enum osd_layer layer)
{
 struct osd_state *osd = sd;
 struct osd_window_state *win = &osd->win[layer];
 unsigned long flags;

 spin_lock_irqsave(&osd->lock, flags);

 if (!win->is_enabled) {
  spin_unlock_irqrestore(&osd->lock, flags);
  return;
 }
 win->is_enabled = 0;

 _osd_disable_layer(sd, layer);

 spin_unlock_irqrestore(&osd->lock, flags);
}
