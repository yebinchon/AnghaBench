
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {int num_queue_pairs; TYPE_1__** rx_rings; } ;
struct TYPE_2__ {scalar_t__ desc; } ;


 int i40e_free_rx_resources (TYPE_1__*) ;

__attribute__((used)) static void i40e_vsi_free_rx_resources(struct i40e_vsi *vsi)
{
 int i;

 if (!vsi->rx_rings)
  return;

 for (i = 0; i < vsi->num_queue_pairs; i++)
  if (vsi->rx_rings[i] && vsi->rx_rings[i]->desc)
   i40e_free_rx_resources(vsi->rx_rings[i]);
}
