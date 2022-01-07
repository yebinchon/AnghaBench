
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cx25821_dev {int dummy; } ;
struct cx25821_audio_dev {struct cx25821_dev* dev; } ;
typedef int irqreturn_t ;


 int AUD_A_INT_MSK ;
 int AUD_A_INT_STAT ;
 int IRQ_RETVAL (int) ;
 int PCI_INT_STAT ;
 int cx25821_aud_irq (struct cx25821_audio_dev*,scalar_t__,scalar_t__) ;
 scalar_t__ cx_read (int ) ;
 int cx_write (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t cx25821_irq(int irq, void *dev_id)
{
 struct cx25821_audio_dev *chip = dev_id;
 struct cx25821_dev *dev = chip->dev;
 u32 status, pci_status;
 u32 audint_status, audint_mask;
 int loop, handled = 0;

 audint_status = cx_read(AUD_A_INT_STAT);
 audint_mask = cx_read(AUD_A_INT_MSK);
 status = cx_read(PCI_INT_STAT);

 for (loop = 0; loop < 1; loop++) {
  status = cx_read(PCI_INT_STAT);
  if (0 == status) {
   status = cx_read(PCI_INT_STAT);
   audint_status = cx_read(AUD_A_INT_STAT);
   audint_mask = cx_read(AUD_A_INT_MSK);

   if (status) {
    handled = 1;
    cx_write(PCI_INT_STAT, status);

    cx25821_aud_irq(chip, audint_status,
      audint_mask);
    break;
   } else {
    goto out;
   }
  }

  handled = 1;
  cx_write(PCI_INT_STAT, status);

  cx25821_aud_irq(chip, audint_status, audint_mask);
 }

 pci_status = cx_read(PCI_INT_STAT);

 if (handled)
  cx_write(PCI_INT_STAT, pci_status);

out:
 return IRQ_RETVAL(handled);
}
