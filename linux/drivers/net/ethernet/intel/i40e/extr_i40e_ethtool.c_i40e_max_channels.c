
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {unsigned int alloc_queue_pairs; } ;



__attribute__((used)) static unsigned int i40e_max_channels(struct i40e_vsi *vsi)
{

 return vsi->alloc_queue_pairs;
}
