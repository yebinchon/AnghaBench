
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pt; } ;
struct saa7134_dev {TYPE_1__ ts_q; int pci; } ;


 int saa7134_pgtable_free (int ,int *) ;

int saa7134_ts_fini(struct saa7134_dev *dev)
{
 saa7134_pgtable_free(dev->pci, &dev->ts_q.pt);
 return 0;
}
