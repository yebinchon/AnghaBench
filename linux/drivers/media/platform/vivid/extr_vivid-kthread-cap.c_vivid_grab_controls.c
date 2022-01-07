
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int ctrl_has_scaler_cap; int ctrl_has_compose_cap; int ctrl_has_crop_cap; } ;


 int v4l2_ctrl_grab (int ,int) ;

__attribute__((used)) static void vivid_grab_controls(struct vivid_dev *dev, bool grab)
{
 v4l2_ctrl_grab(dev->ctrl_has_crop_cap, grab);
 v4l2_ctrl_grab(dev->ctrl_has_compose_cap, grab);
 v4l2_ctrl_grab(dev->ctrl_has_scaler_cap, grab);
}
