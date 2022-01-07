
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct pci_dev {int dummy; } ;


 int devno ;
 struct snd_card* pci_get_drvdata (struct pci_dev*) ;
 int snd_card_free (struct snd_card*) ;

__attribute__((used)) static void cx88_audio_finidev(struct pci_dev *pci)
{
 struct snd_card *card = pci_get_drvdata(pci);

 snd_card_free(card);

 devno--;
}
