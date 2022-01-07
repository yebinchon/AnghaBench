
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int num_queue_pairs; int * rx_rings; } ;


 int i40e_setup_rx_descriptors (int ) ;

__attribute__((used)) static int i40e_vsi_setup_rx_resources(struct i40e_vsi *vsi)
{
 int i, err = 0;

 for (i = 0; i < vsi->num_queue_pairs && !err; i++)
  err = i40e_setup_rx_descriptors(vsi->rx_rings[i]);
 return err;
}
