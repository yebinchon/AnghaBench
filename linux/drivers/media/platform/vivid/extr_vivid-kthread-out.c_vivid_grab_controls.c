
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int ctrl_tx_rgb_range; int ctrl_tx_mode; int ctrl_has_scaler_out; int ctrl_has_compose_out; int ctrl_has_crop_out; } ;


 int v4l2_ctrl_grab (int ,int) ;

__attribute__((used)) static void vivid_grab_controls(struct vivid_dev *dev, bool grab)
{
 v4l2_ctrl_grab(dev->ctrl_has_crop_out, grab);
 v4l2_ctrl_grab(dev->ctrl_has_compose_out, grab);
 v4l2_ctrl_grab(dev->ctrl_has_scaler_out, grab);
 v4l2_ctrl_grab(dev->ctrl_tx_mode, grab);
 v4l2_ctrl_grab(dev->ctrl_tx_rgb_range, grab);
}
