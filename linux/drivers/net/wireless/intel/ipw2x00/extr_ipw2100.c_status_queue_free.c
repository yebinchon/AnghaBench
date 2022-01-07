
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * drv; int nic; int size; } ;
struct ipw2100_priv {TYPE_1__ status_queue; int pci_dev; } ;


 int IPW_DEBUG_INFO (char*) ;
 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void status_queue_free(struct ipw2100_priv *priv)
{
 IPW_DEBUG_INFO("enter\n");

 if (priv->status_queue.drv) {
  pci_free_consistent(priv->pci_dev, priv->status_queue.size,
        priv->status_queue.drv,
        priv->status_queue.nic);
  priv->status_queue.drv = ((void*)0);
 }

 IPW_DEBUG_INFO("exit\n");
}
