
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvaser_pciefd {int nr_channels; TYPE_2__** can; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ can; } ;


 int register_candev (int ) ;
 int unregister_candev (int ) ;

__attribute__((used)) static int kvaser_pciefd_reg_candev(struct kvaser_pciefd *pcie)
{
 int i;

 for (i = 0; i < pcie->nr_channels; i++) {
  int err = register_candev(pcie->can[i]->can.dev);

  if (err) {
   int j;


   for (j = 0; j < i; j++)
    unregister_candev(pcie->can[j]->can.dev);
   return err;
  }
 }

 return 0;
}
