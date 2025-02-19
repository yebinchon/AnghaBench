
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct v4l2_ctrl {int flags; } ;
struct lm3560_flash {TYPE_2__* subdev_led; TYPE_1__* pdata; int led_mode; struct v4l2_ctrl_handler* ctrls_led; } ;
typedef enum lm3560_led_id { ____Placeholder_lm3560_led_id } lm3560_led_id ;
struct TYPE_4__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct TYPE_3__ {int* max_flash_brt; int* max_torch_brt; int max_flash_timeout; } ;


 int LM3560_FLASH_BRT_MIN ;
 int LM3560_FLASH_BRT_STEP ;
 int LM3560_FLASH_TOUT_MIN ;
 int LM3560_FLASH_TOUT_STEP ;
 int LM3560_TORCH_BRT_MIN ;
 int LM3560_TORCH_BRT_STEP ;
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
 struct v4l2_ctrl_ops* lm3560_led_ctrl_ops ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 struct v4l2_ctrl* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int ,int,int ,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int,int,int ) ;

__attribute__((used)) static int lm3560_init_controls(struct lm3560_flash *flash,
    enum lm3560_led_id led_no)
{
 struct v4l2_ctrl *fault;
 u32 max_flash_brt = flash->pdata->max_flash_brt[led_no];
 u32 max_torch_brt = flash->pdata->max_torch_brt[led_no];
 struct v4l2_ctrl_handler *hdl = &flash->ctrls_led[led_no];
 const struct v4l2_ctrl_ops *ops = &lm3560_led_ctrl_ops[led_no];

 v4l2_ctrl_handler_init(hdl, 8);


 v4l2_ctrl_new_std_menu(hdl, ops, V4L2_CID_FLASH_LED_MODE,
          V4L2_FLASH_LED_MODE_TORCH, ~0x7,
          V4L2_FLASH_LED_MODE_NONE);
 flash->led_mode = V4L2_FLASH_LED_MODE_NONE;


 v4l2_ctrl_new_std_menu(hdl, ops, V4L2_CID_FLASH_STROBE_SOURCE,
          0x1, ~0x3, V4L2_FLASH_STROBE_SOURCE_SOFTWARE);


 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_STROBE, 0, 0, 0, 0);


 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_STROBE_STOP, 0, 0, 0, 0);


 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_TIMEOUT,
     LM3560_FLASH_TOUT_MIN,
     flash->pdata->max_flash_timeout,
     LM3560_FLASH_TOUT_STEP,
     flash->pdata->max_flash_timeout);


 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_INTENSITY,
     LM3560_FLASH_BRT_MIN, max_flash_brt,
     LM3560_FLASH_BRT_STEP, max_flash_brt);


 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_TORCH_INTENSITY,
     LM3560_TORCH_BRT_MIN, max_torch_brt,
     LM3560_TORCH_BRT_STEP, max_torch_brt);


 fault = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FLASH_FAULT, 0,
      V4L2_FLASH_FAULT_OVER_VOLTAGE
      | V4L2_FLASH_FAULT_OVER_TEMPERATURE
      | V4L2_FLASH_FAULT_SHORT_CIRCUIT
      | V4L2_FLASH_FAULT_TIMEOUT, 0, 0);
 if (fault != ((void*)0))
  fault->flags |= V4L2_CTRL_FLAG_VOLATILE;

 if (hdl->error)
  return hdl->error;

 flash->subdev_led[led_no].ctrl_handler = hdl;
 return 0;
}
