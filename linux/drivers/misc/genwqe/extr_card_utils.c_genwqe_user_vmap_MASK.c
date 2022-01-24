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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
struct genwqe_dev {struct pci_dev* pci_dev; } ;
struct dma_mapping {unsigned long size; int nr_pages; int /*<<< orphan*/ * u_vaddr; int /*<<< orphan*/ * dma_list; int /*<<< orphan*/ * page_list; int /*<<< orphan*/  write; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FOLL_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct genwqe_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (unsigned long) ; 

int FUNC8(struct genwqe_dev *cd, struct dma_mapping *m, void *uaddr,
		     unsigned long size)
{
	int rc = -EINVAL;
	unsigned long data, offs;
	struct pci_dev *pci_dev = cd->pci_dev;

	if ((uaddr == NULL) || (size == 0)) {
		m->size = 0;	/* mark unused and not added */
		return -EINVAL;
	}
	m->u_vaddr = uaddr;
	m->size    = size;

	/* determine space needed for page_list. */
	data = (unsigned long)uaddr;
	offs = FUNC7(data);
	if (size > ULONG_MAX - PAGE_SIZE - offs) {
		m->size = 0;	/* mark unused and not added */
		return -EINVAL;
	}
	m->nr_pages = FUNC0(offs + size, PAGE_SIZE);

	m->page_list = FUNC5(m->nr_pages,
			       sizeof(struct page *) + sizeof(dma_addr_t),
			       GFP_KERNEL);
	if (!m->page_list) {
		FUNC1(&pci_dev->dev, "err: alloc page_list failed\n");
		m->nr_pages = 0;
		m->u_vaddr = NULL;
		m->size = 0;	/* mark unused and not added */
		return -ENOMEM;
	}
	m->dma_list = (dma_addr_t *)(m->page_list + m->nr_pages);

	/* pin user pages in memory */
	rc = FUNC4(data & PAGE_MASK, /* page aligned addr */
				 m->nr_pages,
				 m->write ? FOLL_WRITE : 0,	/* readable/writable */
				 m->page_list);	/* ptrs to pages */
	if (rc < 0)
		goto fail_get_user_pages;

	/* assumption: get_user_pages can be killed by signals. */
	if (rc < m->nr_pages) {
		FUNC2(m->page_list, rc, m->write);
		rc = -EFAULT;
		goto fail_get_user_pages;
	}

	rc = FUNC3(cd, m->page_list, m->nr_pages, m->dma_list);
	if (rc != 0)
		goto fail_free_user_pages;

	return 0;

 fail_free_user_pages:
	FUNC2(m->page_list, m->nr_pages, m->write);

 fail_get_user_pages:
	FUNC6(m->page_list);
	m->page_list = NULL;
	m->dma_list = NULL;
	m->nr_pages = 0;
	m->u_vaddr = NULL;
	m->size = 0;		/* mark unused and not added */
	return rc;
}