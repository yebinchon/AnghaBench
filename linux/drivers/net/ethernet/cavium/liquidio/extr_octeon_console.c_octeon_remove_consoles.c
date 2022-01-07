
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct octeon_device {size_t num_consoles; TYPE_1__* console_poll_work; struct octeon_console* console; } ;
struct octeon_console {scalar_t__ output_base_addr; scalar_t__ input_base_addr; scalar_t__ buffer_size; scalar_t__ addr; int active; } ;
struct TYPE_2__ {int work; } ;


 int cancel_delayed_work_sync (int *) ;

void octeon_remove_consoles(struct octeon_device *oct)
{
 u32 i;
 struct octeon_console *console;

 for (i = 0; i < oct->num_consoles; i++) {
  console = &oct->console[i];

  if (!console->active)
   continue;

  cancel_delayed_work_sync(&oct->console_poll_work[i].
      work);
  console->addr = 0;
  console->buffer_size = 0;
  console->input_base_addr = 0;
  console->output_base_addr = 0;
 }

 oct->num_consoles = 0;
}
