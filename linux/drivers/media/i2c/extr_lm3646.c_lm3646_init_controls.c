
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct v4l2_ctrl {int flags; } ;
struct TYPE_4__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct lm3646_flash {TYPE_2__ subdev_led; TYPE_1__* pdata; struct v4l2_ctrl_handler ctrls_led; } ;
struct TYPE_3__ {int flash_timeout; } ;


 int LM3646_FLASH_TOUT_MAX ;
 int LM3646_FLASH_TOUT_MIN ;
 int LM3646_FLASH_TOUT_STEP ;
 int LM3646_TOTAL_FLASH_BRT_MAX ;
 int LM3646_TOTAL_FLASH_BRT_MIN ;
 int LM3646_TOTAL_FLASH_BRT_STEP ;
 int LM3646_TOTAL_TORCH_BRT_MAX ;
 int LM3646_TOTAL_TORCH_BRT_MIN ;
 int LM3646_TOTAL_TORCH_BRT_STEP ;
 int V4L2_CID_FLASH_FAULT ;
 int V4L2_CID_FLASH_INTENSITY ;
 int V4L2_CID_FLASH_LED_MODE ;
 int V4L2_CID_FLASH_STROBE ;
 int V4L2_CID_FLASH_STROBE_SOURCE ;
 int V4L2_CID_FLASH_STROBE_STOP ;
 int V4L2_CID_FLASH_TIMEOUT ;
 int V4L2_CID_FLASH_TORCH_INTENSITY ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_FLASH_FAULT_OVER_TEMPERATURE ;
 int V4L2_FLASH_FAULT_OVER_VOLTAGE ;
 int V4L2_FLASH_FAULT_SHORT_CIRCUIT ;
 int V4L2_FLASH_FAULT_TIMEOUT ;
 int V4L2_FLASH_LED_MODE_NONE ;
 int V4L2_FLASH_LED_MODE_TORCH ;
 int V4L2_FLASH_STROBE_SOURCE_SOFTWARE ;
 struct v4l2_ctrl_ops lm3646_led_ctrl_ops ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 struct v4l2_ctrl* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int ,int,int ,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int,int,int ) ;

__attribute__((used)) static int lm3646_init_controls(struct lm3646_flash *flash)
{
 struct v4l2_ctrl *fault;
 struct v4l2_ctrl_handler *hdl = &flash->ctrls_led;
 const struct v4l2_ctrl_ops *ops = &lm3646_led_ctrl_ops;

 v4l2_ctrl_handler_init(hdl, 8);

 v4l2_ctrl_new_std_menu(hdl, ops, V4L2_CID_FLASH_LED_MODE,
          V4L2_FLASH_LED_MODE_TORCH, ~0x7,
          V4L2_FLASH_LED_MODE_NONE);


 v4l2_ctrl_new_std_menu(hdl, ops, V4L2_CID_FLASH_STROBE_SOURCE,
          0x1, ~0x3, V4L2_FLASH_STROBE_SOURCE_SOFTWARE);


 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_STROBE, 0, 0, 0, 0);

 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_STROBE_STOP, 0, 0, 0, 0);


 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_TIMEOUT,
     LM3646_FLASH_TOUT_MIN,
     LM3646_FLASH_TOUT_MAX,
     LM3646_FLASH_TOUT_STEP, flash->pdata->flash_timeout);


 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_INTENSITY,
     LM3646_TOTAL_FLASH_BRT_MIN,
     LM3646_TOTAL_FLASH_BRT_MAX,
     LM3646_TOTAL_FLASH_BRT_STEP,
     LM3646_TOTAL_FLASH_BRT_MAX);


 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_TORCH_INTENSITY,
     LM3646_TOTAL_TORCH_BRT_MIN,
     LM3646_TOTAL_TORCH_BRT_MAX,
     LM3646_TOTAL_TORCH_BRT_STEP,
     LM3646_TOTAL_TORCH_BRT_MAX);


 fault = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_FAULT, 0,
      V4L2_FLASH_FAULT_OVER_VOLTAGE
      | V4L2_FLASH_FAULT_OVER_TEMPERATURE
      | V4L2_FLASH_FAULT_SHORT_CIRCUIT
      | V4L2_FLASH_FAULT_TIMEOUT, 0, 0);
 if (fault != ((void*)0))
  fault->flags |= V4L2_CTRL_FLAG_VOLATILE;

 if (hdl->error)
  return hdl->error;

 flash->subdev_led.ctrl_handler = hdl;
 return 0;
}
