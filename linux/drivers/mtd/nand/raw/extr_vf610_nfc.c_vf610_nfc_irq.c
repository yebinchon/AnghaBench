
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_nfc {int cmd_done; } ;
typedef int irqreturn_t ;


 int IDLE_EN_BIT ;
 int IRQ_HANDLED ;
 int NFC_IRQ_STATUS ;
 int complete (int *) ;
 int vf610_nfc_clear (struct vf610_nfc*,int ,int ) ;

__attribute__((used)) static irqreturn_t vf610_nfc_irq(int irq, void *data)
{
 struct vf610_nfc *nfc = data;

 vf610_nfc_clear(nfc, NFC_IRQ_STATUS, IDLE_EN_BIT);
 complete(&nfc->cmd_done);

 return IRQ_HANDLED;
}
