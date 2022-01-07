
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_sdio {int dcmd_resp_wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static int brcmf_sdio_dcmd_resp_wake(struct brcmf_sdio *bus)
{
 wake_up_interruptible(&bus->dcmd_resp_wait);

 return 0;
}
