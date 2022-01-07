
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {size_t iwarp_base_vector; int * msix_entries; int num_iwarp_msix; struct i40e_client_instance* cinst; } ;
struct TYPE_2__ {int * msix_entries; int msix_count; } ;
struct i40e_client_instance {TYPE_1__ lan_info; int client; } ;



void i40e_client_update_msix_info(struct i40e_pf *pf)
{
 struct i40e_client_instance *cdev = pf->cinst;

 if (!cdev || !cdev->client)
  return;

 cdev->lan_info.msix_count = pf->num_iwarp_msix;
 cdev->lan_info.msix_entries = &pf->msix_entries[pf->iwarp_base_vector];
}
