
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ndev; } ;
struct pciefd_can {TYPE_1__ ucan; } ;


 int free_candev (int ) ;
 int unregister_candev (int ) ;

__attribute__((used)) static void pciefd_can_remove(struct pciefd_can *priv)
{

 unregister_candev(priv->ucan.ndev);


 free_candev(priv->ucan.ndev);
}
