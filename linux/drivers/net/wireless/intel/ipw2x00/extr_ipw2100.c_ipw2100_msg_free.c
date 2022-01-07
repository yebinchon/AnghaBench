
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ipw2100_priv {TYPE_3__* msg_buffers; int pci_dev; } ;
struct ipw2100_cmd_header {int dummy; } ;
struct TYPE_4__ {int cmd_phys; int cmd; } ;
struct TYPE_5__ {TYPE_1__ c_struct; } ;
struct TYPE_6__ {TYPE_2__ info; } ;


 int IPW_COMMAND_POOL_SIZE ;
 int kfree (TYPE_3__*) ;
 int pci_free_consistent (int ,int,int ,int ) ;

__attribute__((used)) static void ipw2100_msg_free(struct ipw2100_priv *priv)
{
 int i;

 if (!priv->msg_buffers)
  return;

 for (i = 0; i < IPW_COMMAND_POOL_SIZE; i++) {
  pci_free_consistent(priv->pci_dev,
        sizeof(struct ipw2100_cmd_header),
        priv->msg_buffers[i].info.c_struct.cmd,
        priv->msg_buffers[i].info.c_struct.
        cmd_phys);
 }

 kfree(priv->msg_buffers);
 priv->msg_buffers = ((void*)0);
}
