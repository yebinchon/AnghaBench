
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cmac {TYPE_2__* adapter; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS ;
 int dev_dbg (int *,char*,int ) ;
 scalar_t__ netif_msg_intr (TYPE_2__*) ;
 int pm3393_interrupt_clear (struct cmac*) ;
 int pmread (struct cmac*,int ,int *) ;

__attribute__((used)) static int pm3393_interrupt_handler(struct cmac *cmac)
{
 u32 master_intr_status;


 pmread(cmac, SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS,
        &master_intr_status);
 if (netif_msg_intr(cmac->adapter))
  dev_dbg(&cmac->adapter->pdev->dev, "PM3393 intr cause 0x%x\n",
   master_intr_status);


 pm3393_interrupt_clear(cmac);

 return 0;
}
