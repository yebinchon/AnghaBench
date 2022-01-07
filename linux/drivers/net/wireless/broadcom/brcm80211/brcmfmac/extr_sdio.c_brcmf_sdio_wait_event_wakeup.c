
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_sdio {int ctrl_wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
brcmf_sdio_wait_event_wakeup(struct brcmf_sdio *bus)
{
 wake_up_interruptible(&bus->ctrl_wait);
 return;
}
