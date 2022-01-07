
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_mem {int addr; scalar_t__ size; } ;
struct genwqe_file {struct genwqe_dev* cd; } ;
struct genwqe_dev {int dummy; } ;
struct dma_mapping {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int genwqe_del_pin (struct genwqe_file*,struct dma_mapping*) ;
 struct dma_mapping* genwqe_search_pin (struct genwqe_file*,unsigned long,unsigned long,int *) ;
 int genwqe_user_vunmap (struct genwqe_dev*,struct dma_mapping*) ;
 int kfree (struct dma_mapping*) ;
 unsigned long round_up (scalar_t__,int ) ;

__attribute__((used)) static int genwqe_unpin_mem(struct genwqe_file *cfile, struct genwqe_mem *m)
{
 struct genwqe_dev *cd = cfile->cd;
 struct dma_mapping *dma_map;
 unsigned long map_addr;
 unsigned long map_size;

 if (m->addr == 0x0)
  return -EINVAL;

 map_addr = (m->addr & PAGE_MASK);
 map_size = round_up(m->size + (m->addr & ~PAGE_MASK), PAGE_SIZE);

 dma_map = genwqe_search_pin(cfile, map_addr, map_size, ((void*)0));
 if (dma_map == ((void*)0))
  return -ENOENT;

 genwqe_del_pin(cfile, dma_map);
 genwqe_user_vunmap(cd, dma_map);
 kfree(dma_map);
 return 0;
}
