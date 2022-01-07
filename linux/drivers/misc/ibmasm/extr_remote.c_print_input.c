
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key_down; int key_flag; int key_code; } ;
struct TYPE_5__ {int y; int x; } ;
struct TYPE_6__ {TYPE_1__ keyboard; TYPE_2__ mouse; } ;
struct remote_input {scalar_t__ type; unsigned char mouse_buttons; TYPE_3__ data; } ;


 scalar_t__ INPUT_TYPE_MOUSE ;
 unsigned char REMOTE_BUTTON_LEFT ;
 unsigned char REMOTE_BUTTON_MIDDLE ;
 unsigned char REMOTE_BUTTON_RIGHT ;
 int dbg (char*,int ,int ,char*,char*,...) ;

__attribute__((used)) static void print_input(struct remote_input *input)
{
 if (input->type == INPUT_TYPE_MOUSE) {
  unsigned char buttons = input->mouse_buttons;
  dbg("remote mouse movement: (x,y)=(%d,%d)%s%s%s%s\n",
   input->data.mouse.x, input->data.mouse.y,
   (buttons) ? " -- buttons:" : "",
   (buttons & REMOTE_BUTTON_LEFT) ? "left " : "",
   (buttons & REMOTE_BUTTON_MIDDLE) ? "middle " : "",
   (buttons & REMOTE_BUTTON_RIGHT) ? "right" : ""
        );
 } else {
  dbg("remote keypress (code, flag, down):"
      "%d (0x%x) [0x%x] [0x%x]\n",
    input->data.keyboard.key_code,
    input->data.keyboard.key_code,
    input->data.keyboard.key_flag,
    input->data.keyboard.key_down
        );
 }
}
