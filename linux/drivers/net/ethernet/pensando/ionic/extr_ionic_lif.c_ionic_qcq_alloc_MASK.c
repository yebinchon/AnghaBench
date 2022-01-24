#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  uintptr_t u32 ;
struct TYPE_13__ {int index; int vector; int cpu; int /*<<< orphan*/  affinity_mask; } ;
struct TYPE_12__ {unsigned int type; void* info; } ;
struct TYPE_14__ {void* info; } ;
struct ionic_qcq {unsigned int flags; uintptr_t base_pa; uintptr_t total_size; TYPE_4__ intr; TYPE_1__ q; TYPE_5__ cq; void* base; } ;
struct ionic_lif {int /*<<< orphan*/  netdev; TYPE_10__* ionic; } ;
struct ionic_dev {int /*<<< orphan*/  intr_ctrl; } ;
struct device {int dummy; } ;
typedef  uintptr_t dma_addr_t ;
struct TYPE_11__ {struct device* dev; struct ionic_dev idev; } ;

/* Variables and functions */
 uintptr_t FUNC0 (uintptr_t,uintptr_t) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTR_INDEX_NOT_ASSIGNED ; 
 int /*<<< orphan*/  IONIC_INTR_MASK_SET ; 
 unsigned int IONIC_QCQ_F_INTR ; 
 unsigned int IONIC_QCQ_F_SG ; 
 uintptr_t PAGE_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char const*,unsigned int,int) ; 
 void* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,uintptr_t,uintptr_t*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_1__*) ; 
 int FUNC8 (struct ionic_lif*,TYPE_5__*,TYPE_4__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,void*,uintptr_t) ; 
 int FUNC10 (struct ionic_lif*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ionic_lif*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ionic_lif*,struct ionic_dev*,TYPE_1__*,unsigned int,char const*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,void*,uintptr_t) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,void*,uintptr_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int FUNC18 () ; 

__attribute__((used)) static int FUNC19(struct ionic_lif *lif, unsigned int type,
			   unsigned int index,
			   const char *name, unsigned int flags,
			   unsigned int num_descs, unsigned int desc_size,
			   unsigned int cq_desc_size,
			   unsigned int sg_desc_size,
			   unsigned int pid, struct ionic_qcq **qcq)
{
	struct ionic_dev *idev = &lif->ionic->idev;
	u32 q_size, cq_size, sg_size, total_size;
	struct device *dev = lif->ionic->dev;
	void *q_base, *cq_base, *sg_base;
	dma_addr_t cq_base_pa = 0;
	dma_addr_t sg_base_pa = 0;
	dma_addr_t q_base_pa = 0;
	struct ionic_qcq *new;
	int err;

	*qcq = NULL;

	q_size  = num_descs * desc_size;
	cq_size = num_descs * cq_desc_size;
	sg_size = num_descs * sg_desc_size;

	total_size = FUNC0(q_size, PAGE_SIZE) + FUNC0(cq_size, PAGE_SIZE);
	/* Note: aligning q_size/cq_size is not enough due to cq_base
	 * address aligning as q_base could be not aligned to the page.
	 * Adding PAGE_SIZE.
	 */
	total_size += PAGE_SIZE;
	if (flags & IONIC_QCQ_F_SG) {
		total_size += FUNC0(sg_size, PAGE_SIZE);
		total_size += PAGE_SIZE;
	}

	new = FUNC4(dev, sizeof(*new), GFP_KERNEL);
	if (!new) {
		FUNC16(lif->netdev, "Cannot allocate queue structure\n");
		err = -ENOMEM;
		goto err_out;
	}

	new->flags = flags;

	new->q.info = FUNC4(dev, sizeof(*new->q.info) * num_descs,
				   GFP_KERNEL);
	if (!new->q.info) {
		FUNC16(lif->netdev, "Cannot allocate queue info\n");
		err = -ENOMEM;
		goto err_out;
	}

	new->q.type = type;

	err = FUNC13(lif, idev, &new->q, index, name, num_descs,
			   desc_size, sg_desc_size, pid);
	if (err) {
		FUNC16(lif->netdev, "Cannot initialize queue\n");
		goto err_out;
	}

	if (flags & IONIC_QCQ_F_INTR) {
		err = FUNC10(lif, &new->intr);
		if (err) {
			FUNC17(lif->netdev, "no intr for %s: %d\n",
				    name, err);
			goto err_out;
		}

		err = FUNC6(lif->ionic, new->intr.index);
		if (err < 0) {
			FUNC17(lif->netdev, "no vector for %s: %d\n",
				    name, err);
			goto err_out_free_intr;
		}
		new->intr.vector = err;
		FUNC12(idev->intr_ctrl, new->intr.index,
				       IONIC_INTR_MASK_SET);

		new->intr.cpu = new->intr.index % FUNC18();
		if (FUNC1(new->intr.cpu))
			FUNC2(new->intr.cpu,
					&new->intr.affinity_mask);
	} else {
		new->intr.index = INTR_INDEX_NOT_ASSIGNED;
	}

	new->cq.info = FUNC4(dev, sizeof(*new->cq.info) * num_descs,
				    GFP_KERNEL);
	if (!new->cq.info) {
		FUNC16(lif->netdev, "Cannot allocate completion queue info\n");
		err = -ENOMEM;
		goto err_out_free_intr;
	}

	err = FUNC8(lif, &new->cq, &new->intr, num_descs, cq_desc_size);
	if (err) {
		FUNC16(lif->netdev, "Cannot initialize completion queue\n");
		goto err_out_free_intr;
	}

	new->base = FUNC5(dev, total_size, &new->base_pa,
				       GFP_KERNEL);
	if (!new->base) {
		FUNC16(lif->netdev, "Cannot allocate queue DMA memory\n");
		err = -ENOMEM;
		goto err_out_free_intr;
	}

	new->total_size = total_size;

	q_base = new->base;
	q_base_pa = new->base_pa;

	cq_base = (void *)FUNC0((uintptr_t)q_base + q_size, PAGE_SIZE);
	cq_base_pa = FUNC0(q_base_pa + q_size, PAGE_SIZE);

	if (flags & IONIC_QCQ_F_SG) {
		sg_base = (void *)FUNC0((uintptr_t)cq_base + cq_size,
					PAGE_SIZE);
		sg_base_pa = FUNC0(cq_base_pa + cq_size, PAGE_SIZE);
		FUNC15(&new->q, sg_base, sg_base_pa);
	}

	FUNC14(&new->q, q_base, q_base_pa);
	FUNC9(&new->cq, cq_base, cq_base_pa);
	FUNC7(&new->cq, &new->q);

	*qcq = new;

	return 0;

err_out_free_intr:
	FUNC11(lif, new->intr.index);
err_out:
	FUNC3(dev, "qcq alloc of %s%d failed %d\n", name, index, err);
	return err;
}