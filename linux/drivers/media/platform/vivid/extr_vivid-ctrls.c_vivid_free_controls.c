
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int ctrl_hdl_fb; int ctrl_hdl_loop_cap; int ctrl_hdl_sdtv_cap; int ctrl_hdl_streaming; int ctrl_hdl_user_aud; int ctrl_hdl_user_vid; int ctrl_hdl_user_gen; int ctrl_hdl_sdr_cap; int ctrl_hdl_radio_tx; int ctrl_hdl_radio_rx; int ctrl_hdl_vbi_out; int ctrl_hdl_vbi_cap; int ctrl_hdl_vid_out; int ctrl_hdl_vid_cap; } ;


 int v4l2_ctrl_handler_free (int *) ;

void vivid_free_controls(struct vivid_dev *dev)
{
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_vid_cap);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_vid_out);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_vbi_cap);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_vbi_out);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_radio_rx);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_radio_tx);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_sdr_cap);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_user_gen);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_user_vid);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_user_aud);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_streaming);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_sdtv_cap);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_loop_cap);
 v4l2_ctrl_handler_free(&dev->ctrl_hdl_fb);
}
