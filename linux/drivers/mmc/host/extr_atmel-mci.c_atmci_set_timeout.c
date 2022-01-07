
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_data {unsigned int timeout_clks; int timeout_ns; } ;
struct atmel_mci_slot {TYPE_1__* mmc; } ;
struct atmel_mci {int dummy; } ;
struct TYPE_2__ {int class_dev; } ;


 int ATMCI_DTOCYC (unsigned int) ;
 int ATMCI_DTOMUL (unsigned int) ;
 int ATMCI_DTOR ;
 unsigned int atmci_ns_to_clocks (struct atmel_mci*,int ) ;
 int atmci_writel (struct atmel_mci*,int ,int) ;
 int dev_vdbg (int *,char*,unsigned int) ;

__attribute__((used)) static void atmci_set_timeout(struct atmel_mci *host,
  struct atmel_mci_slot *slot, struct mmc_data *data)
{
 static unsigned dtomul_to_shift[] = {
  0, 4, 7, 8, 10, 12, 16, 20
 };
 unsigned timeout;
 unsigned dtocyc;
 unsigned dtomul;

 timeout = atmci_ns_to_clocks(host, data->timeout_ns)
  + data->timeout_clks;

 for (dtomul = 0; dtomul < 8; dtomul++) {
  unsigned shift = dtomul_to_shift[dtomul];
  dtocyc = (timeout + (1 << shift) - 1) >> shift;
  if (dtocyc < 15)
   break;
 }

 if (dtomul >= 8) {
  dtomul = 7;
  dtocyc = 15;
 }

 dev_vdbg(&slot->mmc->class_dev, "setting timeout to %u cycles\n",
   dtocyc << dtomul_to_shift[dtomul]);
 atmci_writel(host, ATMCI_DTOR, (ATMCI_DTOMUL(dtomul) | ATMCI_DTOCYC(dtocyc)));
}
