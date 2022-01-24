#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cfv_info {int allocsz; int tx_hr; int tx_tr; int reserved_size; int watermark_tx; int /*<<< orphan*/  vq_tx; int /*<<< orphan*/  reserved_mem; int /*<<< orphan*/  genpool; TYPE_4__* ndev; scalar_t__ alloc_addr; int /*<<< orphan*/  alloc_dma; TYPE_3__* vdev; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_9__ {int mtu; } ;
struct TYPE_7__ {TYPE_1__* parent; } ;
struct TYPE_8__ {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_DATA_LEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct cfv_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct cfv_info *cfv)
{
	int err;

	/* dma_alloc can only allocate whole pages, and we need a more
	 * fine graned allocation so we use genpool. We ask for space needed
	 * by IP and a full ring. If the dma allcoation fails we retry with a
	 * smaller allocation size.
	 */
	err = -ENOMEM;
	cfv->allocsz = (FUNC9(cfv->vq_tx) *
			(ETH_DATA_LEN + cfv->tx_hr + cfv->tx_tr) * 11)/10;
	if (cfv->allocsz <= (FUNC7() + 1) * cfv->ndev->mtu)
		return -EINVAL;

	for (;;) {
		if (cfv->allocsz <= FUNC7() * cfv->ndev->mtu) {
			FUNC6(cfv->ndev, "Not enough device memory\n");
			return -ENOMEM;
		}

		cfv->alloc_addr = FUNC1(
						cfv->vdev->dev.parent->parent,
						cfv->allocsz, &cfv->alloc_dma,
						GFP_ATOMIC);
		if (cfv->alloc_addr)
			break;

		cfv->allocsz = (cfv->allocsz * 3) >> 2;
	}

	FUNC5(cfv->ndev, "Allocated %zd bytes from dma-memory\n",
		   cfv->allocsz);

	/* Allocate on 128 bytes boundaries (1 << 7)*/
	cfv->genpool = FUNC4(7, -1);
	if (!cfv->genpool)
		goto err;

	err = FUNC2(cfv->genpool, (unsigned long)cfv->alloc_addr,
				(phys_addr_t)FUNC8(cfv->alloc_addr),
				cfv->allocsz, -1);
	if (err)
		goto err;

	/* Reserve some memory for low memory situations. If we hit the roof
	 * in the memory pool, we stop TX flow and release the reserve.
	 */
	cfv->reserved_size = FUNC7() * cfv->ndev->mtu;
	cfv->reserved_mem = FUNC3(cfv->genpool,
					   cfv->reserved_size);
	if (!cfv->reserved_mem) {
		err = -ENOMEM;
		goto err;
	}

	cfv->watermark_tx = FUNC9(cfv->vq_tx);
	return 0;
err:
	FUNC0(cfv);
	return err;
}