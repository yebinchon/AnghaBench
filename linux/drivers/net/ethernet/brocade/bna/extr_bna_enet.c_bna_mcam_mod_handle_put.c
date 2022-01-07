
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_mcam_mod {int free_handle_q; } ;
struct bna_mcam_handle {int qe; } ;


 int list_add_tail (int *,int *) ;

void
bna_mcam_mod_handle_put(struct bna_mcam_mod *mcam_mod,
   struct bna_mcam_handle *handle)
{
 list_add_tail(&handle->qe, &mcam_mod->free_handle_q);
}
