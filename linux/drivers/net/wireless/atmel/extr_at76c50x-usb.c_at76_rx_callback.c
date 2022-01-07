
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {struct at76_priv* context; } ;
struct TYPE_2__ {unsigned long data; } ;
struct at76_priv {TYPE_1__ rx_tasklet; } ;


 int tasklet_schedule (TYPE_1__*) ;

__attribute__((used)) static void at76_rx_callback(struct urb *urb)
{
 struct at76_priv *priv = urb->context;

 priv->rx_tasklet.data = (unsigned long)urb;
 tasklet_schedule(&priv->rx_tasklet);
}
