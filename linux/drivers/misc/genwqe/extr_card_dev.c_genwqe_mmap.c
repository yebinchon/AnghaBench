
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int * vm_ops; struct genwqe_file* vm_private_data; int vm_page_prot; } ;
struct genwqe_file {struct genwqe_dev* cd; } ;
struct genwqe_dev {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct dma_mapping {unsigned long size; int dma_addr; int * k_vaddr; int nr_pages; void* u_vaddr; } ;
typedef int dma_addr_t ;


 int CAP_SYS_ADMIN ;
 int DIV_ROUND_UP (unsigned long,int ) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GENWQE_MAPPING_RAW ;
 int GFP_KERNEL ;
 scalar_t__ MAX_ORDER ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __genwqe_add_mapping (struct genwqe_file*,struct dma_mapping*) ;
 int * __genwqe_alloc_consistent (struct genwqe_dev*,unsigned long,int *) ;
 int __genwqe_free_consistent (struct genwqe_dev*,unsigned long,int *,int ) ;
 scalar_t__ capable (int ) ;
 int genwqe_mapping_init (struct dma_mapping*,int ) ;
 int genwqe_vma_ops ;
 scalar_t__ get_order (unsigned long) ;
 int kfree (struct dma_mapping*) ;
 struct dma_mapping* kzalloc (int,int ) ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 unsigned long virt_to_phys (int *) ;

__attribute__((used)) static int genwqe_mmap(struct file *filp, struct vm_area_struct *vma)
{
 int rc;
 unsigned long pfn, vsize = vma->vm_end - vma->vm_start;
 struct genwqe_file *cfile = (struct genwqe_file *)filp->private_data;
 struct genwqe_dev *cd = cfile->cd;
 struct dma_mapping *dma_map;

 if (vsize == 0)
  return -EINVAL;

 if (get_order(vsize) > MAX_ORDER)
  return -ENOMEM;

 dma_map = kzalloc(sizeof(struct dma_mapping), GFP_KERNEL);
 if (dma_map == ((void*)0))
  return -ENOMEM;

 genwqe_mapping_init(dma_map, GENWQE_MAPPING_RAW);
 dma_map->u_vaddr = (void *)vma->vm_start;
 dma_map->size = vsize;
 dma_map->nr_pages = DIV_ROUND_UP(vsize, PAGE_SIZE);
 dma_map->k_vaddr = __genwqe_alloc_consistent(cd, vsize,
           &dma_map->dma_addr);
 if (dma_map->k_vaddr == ((void*)0)) {
  rc = -ENOMEM;
  goto free_dma_map;
 }

 if (capable(CAP_SYS_ADMIN) && (vsize > sizeof(dma_addr_t)))
  *(dma_addr_t *)dma_map->k_vaddr = dma_map->dma_addr;

 pfn = virt_to_phys(dma_map->k_vaddr) >> PAGE_SHIFT;
 rc = remap_pfn_range(vma,
        vma->vm_start,
        pfn,
        vsize,
        vma->vm_page_prot);
 if (rc != 0) {
  rc = -EFAULT;
  goto free_dma_mem;
 }

 vma->vm_private_data = cfile;
 vma->vm_ops = &genwqe_vma_ops;
 __genwqe_add_mapping(cfile, dma_map);

 return 0;

 free_dma_mem:
 __genwqe_free_consistent(cd, dma_map->size,
    dma_map->k_vaddr,
    dma_map->dma_addr);
 free_dma_map:
 kfree(dma_map);
 return rc;
}
