
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {scalar_t__ active_ref; int active_type_id; int last_analog_input; int input; } ;
struct cx8802_driver {scalar_t__ type_id; int (* advise_release ) (struct cx8802_driver*) ;struct cx88_core* core; } ;


 int CX88_BOARD_NONE ;
 scalar_t__ CX88_MPEG_DVB ;
 int MO_GP0_IO ;
 int cx_read (int ) ;
 int dprintk (int,char*,int ) ;
 int stub1 (struct cx8802_driver*) ;

__attribute__((used)) static int cx8802_request_release(struct cx8802_driver *drv)
{
 struct cx88_core *core = drv->core;

 if (drv->advise_release && --core->active_ref == 0) {
  if (drv->type_id == CX88_MPEG_DVB) {




   core->input = core->last_analog_input;
  }

  drv->advise_release(drv);
  core->active_type_id = CX88_BOARD_NONE;
  dprintk(1, "Post release GPIO=%x\n", cx_read(MO_GP0_IO));
 }

 return 0;
}
