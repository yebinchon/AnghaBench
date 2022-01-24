#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int /*<<< orphan*/ * vm_ops; struct genwqe_file* vm_private_data; int /*<<< orphan*/  vm_page_prot; } ;
struct genwqe_file {struct genwqe_dev* cd; } ;
struct genwqe_dev {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct dma_mapping {unsigned long size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/ * k_vaddr; int /*<<< orphan*/  nr_pages; void* u_vaddr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GENWQE_MAPPING_RAW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_ORDER ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_file*,struct dma_mapping*) ; 
 int /*<<< orphan*/ * FUNC2 (struct genwqe_dev*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct genwqe_dev*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_mapping*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  genwqe_vma_ops ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_mapping*) ; 
 struct dma_mapping* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct file *filp, struct vm_area_struct *vma)
{
	int rc;
	unsigned long pfn, vsize = vma->vm_end - vma->vm_start;
	struct genwqe_file *cfile = (struct genwqe_file *)filp->private_data;
	struct genwqe_dev *cd = cfile->cd;
	struct dma_mapping *dma_map;

	if (vsize == 0)
		return -EINVAL;

	if (FUNC6(vsize) > MAX_ORDER)
		return -ENOMEM;

	dma_map = FUNC8(sizeof(struct dma_mapping), GFP_KERNEL);
	if (dma_map == NULL)
		return -ENOMEM;

	FUNC5(dma_map, GENWQE_MAPPING_RAW);
	dma_map->u_vaddr = (void *)vma->vm_start;
	dma_map->size = vsize;
	dma_map->nr_pages = FUNC0(vsize, PAGE_SIZE);
	dma_map->k_vaddr = FUNC2(cd, vsize,
						     &dma_map->dma_addr);
	if (dma_map->k_vaddr == NULL) {
		rc = -ENOMEM;
		goto free_dma_map;
	}

	if (FUNC4(CAP_SYS_ADMIN) && (vsize > sizeof(dma_addr_t)))
		*(dma_addr_t *)dma_map->k_vaddr = dma_map->dma_addr;

	pfn = FUNC10(dma_map->k_vaddr) >> PAGE_SHIFT;
	rc = FUNC9(vma,
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
	FUNC1(cfile, dma_map);

	return 0;

 free_dma_mem:
	FUNC3(cd, dma_map->size,
				dma_map->k_vaddr,
				dma_map->dma_addr);
 free_dma_map:
	FUNC7(dma_map);
	return rc;
}