
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int error; } ;
struct TYPE_6__ {TYPE_2__* ctrl_handler; } ;
struct adv748x_csi2 {TYPE_2__ ctrl_hdl; TYPE_1__ sd; int pixel_rate; } ;


 int INT_MAX ;
 int V4L2_CID_PIXEL_RATE ;
 int adv748x_csi2_ctrl_ops ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_2__*) ;
 int v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int,int ,int,int) ;

__attribute__((used)) static int adv748x_csi2_init_controls(struct adv748x_csi2 *tx)
{

 v4l2_ctrl_handler_init(&tx->ctrl_hdl, 1);

 tx->pixel_rate = v4l2_ctrl_new_std(&tx->ctrl_hdl,
        &adv748x_csi2_ctrl_ops,
        V4L2_CID_PIXEL_RATE, 1, INT_MAX,
        1, 1);

 tx->sd.ctrl_handler = &tx->ctrl_hdl;
 if (tx->ctrl_hdl.error) {
  v4l2_ctrl_handler_free(&tx->ctrl_hdl);
  return tx->ctrl_hdl.error;
 }

 return v4l2_ctrl_handler_setup(&tx->ctrl_hdl);
}
