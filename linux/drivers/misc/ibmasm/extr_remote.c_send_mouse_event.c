
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
struct TYPE_4__ {TYPE_1__ mouse; } ;
struct remote_input {unsigned char mouse_buttons; TYPE_2__ data; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 unsigned char REMOTE_BUTTON_LEFT ;
 unsigned char REMOTE_BUTTON_MIDDLE ;
 unsigned char REMOTE_BUTTON_RIGHT ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void send_mouse_event(struct input_dev *dev, struct remote_input *input)
{
 unsigned char buttons = input->mouse_buttons;

 input_report_abs(dev, ABS_X, input->data.mouse.x);
 input_report_abs(dev, ABS_Y, input->data.mouse.y);
 input_report_key(dev, BTN_LEFT, buttons & REMOTE_BUTTON_LEFT);
 input_report_key(dev, BTN_MIDDLE, buttons & REMOTE_BUTTON_MIDDLE);
 input_report_key(dev, BTN_RIGHT, buttons & REMOTE_BUTTON_RIGHT);
 input_sync(dev);
}
