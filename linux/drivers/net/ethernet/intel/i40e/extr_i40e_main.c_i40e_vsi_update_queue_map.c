
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * tc_mapping; int queue_mapping; int mapping_flags; } ;
struct i40e_vsi_context {TYPE_2__ info; } ;
struct TYPE_3__ {int tc_mapping; int queue_mapping; int mapping_flags; } ;
struct i40e_vsi {TYPE_1__ info; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void i40e_vsi_update_queue_map(struct i40e_vsi *vsi,
          struct i40e_vsi_context *ctxt)
{




 vsi->info.mapping_flags = ctxt->info.mapping_flags;
 memcpy(&vsi->info.queue_mapping,
        &ctxt->info.queue_mapping, sizeof(vsi->info.queue_mapping));
 memcpy(&vsi->info.tc_mapping, ctxt->info.tc_mapping,
        sizeof(vsi->info.tc_mapping));
}
