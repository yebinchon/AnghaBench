
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct genwqe_file {struct genwqe_dev* cd; } ;
struct genwqe_dev {int dummy; } ;
struct dma_mapping {int dummy; } ;
struct ddcb_requ {TYPE_1__* sgls; struct dma_mapping* dma_mappings; } ;
struct TYPE_2__ {int * sgl; } ;


 unsigned int DDCB_FIXUPS ;
 int __genwqe_del_mapping (struct genwqe_file*,struct dma_mapping*) ;
 scalar_t__ dma_mapping_used (struct dma_mapping*) ;
 int genwqe_free_sync_sgl (struct genwqe_dev*,TYPE_1__*) ;
 int genwqe_user_vunmap (struct genwqe_dev*,struct dma_mapping*) ;

__attribute__((used)) static int ddcb_cmd_cleanup(struct genwqe_file *cfile, struct ddcb_requ *req)
{
 unsigned int i;
 struct dma_mapping *dma_map;
 struct genwqe_dev *cd = cfile->cd;

 for (i = 0; i < DDCB_FIXUPS; i++) {
  dma_map = &req->dma_mappings[i];

  if (dma_mapping_used(dma_map)) {
   __genwqe_del_mapping(cfile, dma_map);
   genwqe_user_vunmap(cd, dma_map);
  }
  if (req->sgls[i].sgl != ((void*)0))
   genwqe_free_sync_sgl(cd, &req->sgls[i]);
 }
 return 0;
}
