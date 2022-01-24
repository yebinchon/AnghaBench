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
struct net_device {int dummy; } ;
struct enic {unsigned int rq_count; unsigned int wq_count; unsigned int intr_count; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * napi; int /*<<< orphan*/  vdev; int /*<<< orphan*/ * wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ VNIC_DEV_INTR_MODE_MSIX ; 
 size_t FUNC0 (struct enic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*) ; 
 int /*<<< orphan*/  FUNC2 (struct enic*) ; 
 int FUNC3 (struct enic*) ; 
 int /*<<< orphan*/  FUNC4 (struct enic*) ; 
 int /*<<< orphan*/  FUNC5 (struct enic*) ; 
 int /*<<< orphan*/  enic_free_rq_buf ; 
 int /*<<< orphan*/  FUNC6 (struct enic*) ; 
 int /*<<< orphan*/  FUNC7 (struct enic*) ; 
 int /*<<< orphan*/  FUNC8 (struct enic*) ; 
 int /*<<< orphan*/  FUNC9 (struct enic*) ; 
 int FUNC10 (struct enic*) ; 
 int /*<<< orphan*/  FUNC11 (struct enic*) ; 
 int /*<<< orphan*/  enic_rq_alloc_buf ; 
 int /*<<< orphan*/  FUNC12 (struct enic*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct enic*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,char*) ; 
 struct enic* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC27(struct net_device *netdev)
{
	struct enic *enic = FUNC17(netdev);
	unsigned int i;
	int err, ret;

	err = FUNC10(enic);
	if (err) {
		FUNC16(netdev, "Unable to request irq.\n");
		return err;
	}
	FUNC6(enic);
	FUNC12(enic);

	err = FUNC3(enic);
	if (err) {
		FUNC16(netdev,
			"Failed to alloc notify buffer, aborting.\n");
		goto err_out_free_intr;
	}

	for (i = 0; i < enic->rq_count; i++) {
		/* enable rq before updating rq desc */
		FUNC24(&enic->rq[i]);
		FUNC25(&enic->rq[i], enic_rq_alloc_buf);
		/* Need at least one buffer on ring to get going */
		if (FUNC22(&enic->rq[i]) == 0) {
			FUNC16(netdev, "Unable to alloc receive buffers\n");
			err = -ENOMEM;
			goto err_out_free_rq;
		}
	}

	for (i = 0; i < enic->wq_count; i++)
		FUNC26(&enic->wq[i]);

	if (!FUNC7(enic) && !FUNC8(enic))
		FUNC1(enic);

	FUNC13(netdev);

	FUNC18(netdev);

	for (i = 0; i < enic->rq_count; i++)
		FUNC15(&enic->napi[i]);

	if (FUNC19(enic->vdev) == VNIC_DEV_INTR_MODE_MSIX)
		for (i = 0; i < enic->wq_count; i++)
			FUNC15(&enic->napi[FUNC0(enic, i)]);
	FUNC2(enic);

	for (i = 0; i < enic->intr_count; i++)
		FUNC20(&enic->intr[i]);

	FUNC9(enic);
	FUNC11(enic);

	return 0;

err_out_free_rq:
	for (i = 0; i < enic->rq_count; i++) {
		ret = FUNC23(&enic->rq[i]);
		if (!ret)
			FUNC21(&enic->rq[i], enic_free_rq_buf);
	}
	FUNC4(enic);
err_out_free_intr:
	FUNC14(enic);
	FUNC5(enic);

	return err;
}