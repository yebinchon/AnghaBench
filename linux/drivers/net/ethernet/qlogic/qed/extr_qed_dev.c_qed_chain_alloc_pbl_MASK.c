#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct qed_dev {TYPE_1__* pdev; } ;
struct qed_chain_ext_pbl {int /*<<< orphan*/  p_pbl_phys; int /*<<< orphan*/ * p_pbl_virt; } ;
struct TYPE_4__ {void** pp_virt_addr_tbl; } ;
struct qed_chain {int page_cnt; int b_external_pbl; TYPE_2__ pbl; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QED_CHAIN_PAGE_SIZE ; 
 int QED_CHAIN_PBL_ENTRY_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_chain*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_chain*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_chain*) ; 
 void** FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct qed_dev *cdev,
		    struct qed_chain *p_chain,
		    struct qed_chain_ext_pbl *ext_pbl)
{
	u32 page_cnt = p_chain->page_cnt, size, i;
	dma_addr_t p_phys = 0, p_pbl_phys = 0;
	void **pp_virt_addr_tbl = NULL;
	u8 *p_pbl_virt = NULL;
	void *p_virt = NULL;

	size = page_cnt * sizeof(*pp_virt_addr_tbl);
	pp_virt_addr_tbl = FUNC4(size);
	if (!pp_virt_addr_tbl)
		return -ENOMEM;

	/* The allocation of the PBL table is done with its full size, since it
	 * is expected to be successive.
	 * qed_chain_init_pbl_mem() is called even in a case of an allocation
	 * failure, since pp_virt_addr_tbl was previously allocated, and it
	 * should be saved to allow its freeing during the error flow.
	 */
	size = page_cnt * QED_CHAIN_PBL_ENTRY_SIZE;

	if (!ext_pbl) {
		p_pbl_virt = FUNC0(&cdev->pdev->dev,
						size, &p_pbl_phys, GFP_KERNEL);
	} else {
		p_pbl_virt = ext_pbl->p_pbl_virt;
		p_pbl_phys = ext_pbl->p_pbl_phys;
		p_chain->b_external_pbl = true;
	}

	FUNC2(p_chain, p_pbl_virt, p_pbl_phys,
			       pp_virt_addr_tbl);
	if (!p_pbl_virt)
		return -ENOMEM;

	for (i = 0; i < page_cnt; i++) {
		p_virt = FUNC0(&cdev->pdev->dev,
					    QED_CHAIN_PAGE_SIZE,
					    &p_phys, GFP_KERNEL);
		if (!p_virt)
			return -ENOMEM;

		if (i == 0) {
			FUNC1(p_chain, p_virt, p_phys);
			FUNC3(p_chain);
		}

		/* Fill the PBL table with the physical address of the page */
		*(dma_addr_t *)p_pbl_virt = p_phys;
		/* Keep the virtual address of the page */
		p_chain->pbl.pp_virt_addr_tbl[i] = p_virt;

		p_pbl_virt += QED_CHAIN_PBL_ENTRY_SIZE;
	}

	return 0;
}