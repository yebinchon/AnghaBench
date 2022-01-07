
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tango_nfc {TYPE_1__** chips; int chan; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int nand_chip; } ;


 int MAX_CS ;
 int dma_release_channel (int ) ;
 int nand_release (int *) ;
 struct tango_nfc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tango_nand_remove(struct platform_device *pdev)
{
 int cs;
 struct tango_nfc *nfc = platform_get_drvdata(pdev);

 dma_release_channel(nfc->chan);

 for (cs = 0; cs < MAX_CS; ++cs) {
  if (nfc->chips[cs])
   nand_release(&nfc->chips[cs]->nand_chip);
 }

 return 0;
}
