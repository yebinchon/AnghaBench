
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_layer_config {int dummy; } ;
struct osd_window_state {struct osd_layer_config lconfig; } ;
struct osd_state {int lock; struct osd_window_state* win; } ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void osd_get_layer_config(struct osd_state *sd, enum osd_layer layer,
     struct osd_layer_config *lconfig)
{
 struct osd_state *osd = sd;
 struct osd_window_state *win = &osd->win[layer];
 unsigned long flags;

 spin_lock_irqsave(&osd->lock, flags);

 *lconfig = win->lconfig;

 spin_unlock_irqrestore(&osd->lock, flags);
}
