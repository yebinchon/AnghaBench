
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct adv748x_csi2 {int ctrl_hdl; TYPE_1__ sd; } ;


 int is_tx_enabled (struct adv748x_csi2*) ;
 int media_entity_cleanup (int *) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;

void adv748x_csi2_cleanup(struct adv748x_csi2 *tx)
{
 if (!is_tx_enabled(tx))
  return;

 v4l2_async_unregister_subdev(&tx->sd);
 media_entity_cleanup(&tx->sd.entity);
 v4l2_ctrl_handler_free(&tx->ctrl_hdl);
}
