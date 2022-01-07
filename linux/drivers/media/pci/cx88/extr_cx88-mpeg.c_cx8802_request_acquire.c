
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx88_input {int dummy; } ;
struct TYPE_4__ {TYPE_1__* input; } ;
struct cx88_core {scalar_t__ active_type_id; unsigned int last_analog_input; unsigned int input; int active_ref; TYPE_2__ board; } ;
struct cx8802_driver {scalar_t__ type_id; int (* advise_acquire ) (struct cx8802_driver*) ;struct cx88_core* core; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ CX88_BOARD_NONE ;
 scalar_t__ CX88_MPEG_DVB ;
 scalar_t__ CX88_VMUX_DVB ;
 int EBUSY ;
 int MO_GP0_IO ;
 int cx_read (int ) ;
 int dprintk (int,char*,int ) ;
 int stub1 (struct cx8802_driver*) ;

__attribute__((used)) static int cx8802_request_acquire(struct cx8802_driver *drv)
{
 struct cx88_core *core = drv->core;
 unsigned int i;


 if (core->active_type_id != CX88_BOARD_NONE &&
     core->active_type_id != drv->type_id)
  return -EBUSY;

 if (drv->type_id == CX88_MPEG_DVB) {

  core->last_analog_input = core->input;
  core->input = 0;
  for (i = 0;
       i < (sizeof(core->board.input) /
     sizeof(struct cx88_input));
       i++) {
   if (core->board.input[i].type == CX88_VMUX_DVB) {
    core->input = i;
    break;
   }
  }
 }

 if (drv->advise_acquire) {
  core->active_ref++;
  if (core->active_type_id == CX88_BOARD_NONE) {
   core->active_type_id = drv->type_id;
   drv->advise_acquire(drv);
  }

  dprintk(1, "Post acquire GPIO=%x\n", cx_read(MO_GP0_IO));
 }

 return 0;
}
