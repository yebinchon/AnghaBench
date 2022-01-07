
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keybd_dev; int mouse_dev; } ;
struct service_processor {TYPE_1__ remote; } ;
struct remote_input {scalar_t__ type; } ;


 scalar_t__ INPUT_TYPE_KEYBOARD ;
 scalar_t__ INPUT_TYPE_MOUSE ;
 unsigned long advance_queue_reader (struct service_processor*,unsigned long) ;
 int get_queue_entry (struct service_processor*,unsigned long) ;
 unsigned long get_queue_reader (struct service_processor*) ;
 unsigned long get_queue_writer (struct service_processor*) ;
 int memcpy_fromio (struct remote_input*,int ,int) ;
 int print_input (struct remote_input*) ;
 int send_keyboard_event (int ,struct remote_input*) ;
 int send_mouse_event (int ,struct remote_input*) ;

void ibmasm_handle_mouse_interrupt(struct service_processor *sp)
{
 unsigned long reader;
 unsigned long writer;
 struct remote_input input;

 reader = get_queue_reader(sp);
 writer = get_queue_writer(sp);

 while (reader != writer) {
  memcpy_fromio(&input, get_queue_entry(sp, reader),
    sizeof(struct remote_input));

  print_input(&input);
  if (input.type == INPUT_TYPE_MOUSE) {
   send_mouse_event(sp->remote.mouse_dev, &input);
  } else if (input.type == INPUT_TYPE_KEYBOARD) {
   send_keyboard_event(sp->remote.keybd_dev, &input);
  } else
   break;

  reader = advance_queue_reader(sp, reader);
  writer = get_queue_writer(sp);
 }
}
