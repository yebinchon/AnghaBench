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
struct enic {unsigned int intr_count; unsigned int rq_count; unsigned int wq_count; unsigned int cq_count; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * wq; int /*<<< orphan*/ * napi; int /*<<< orphan*/  vdev; int /*<<< orphan*/  notify_timer; } ;

/* Variables and functions */
 scalar_t__ VNIC_DEV_INTR_MODE_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (struct enic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct enic*) ; 
 int /*<<< orphan*/  FUNC3 (struct enic*) ; 
 int /*<<< orphan*/  FUNC4 (struct enic*) ; 
 int /*<<< orphan*/  FUNC5 (struct enic*) ; 
 int /*<<< orphan*/  enic_free_rq_buf ; 
 int /*<<< orphan*/  enic_free_wq_buf ; 
 int /*<<< orphan*/  FUNC6 (struct enic*) ; 
 int /*<<< orphan*/  FUNC7 (struct enic*) ; 
 int /*<<< orphan*/  FUNC8 (struct enic*) ; 
 int /*<<< orphan*/  FUNC9 (struct enic*) ; 
 int /*<<< orphan*/  FUNC10 (struct enic*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct enic* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct net_device *netdev)
{
	struct enic *enic = FUNC12(netdev);
	unsigned int i;
	int err;

	for (i = 0; i < enic->intr_count; i++) {
		FUNC18(&enic->intr[i]);
		(void)FUNC19(&enic->intr[i]); /* flush write */
	}

	FUNC9(enic);

	FUNC0(&enic->notify_timer);
	FUNC8(enic);

	FUNC3(enic);

	for (i = 0; i < enic->rq_count; i++)
		FUNC11(&enic->napi[i]);

	FUNC13(netdev);
	FUNC14(netdev);
	if (FUNC16(enic->vdev) == VNIC_DEV_INTR_MODE_MSIX)
		for (i = 0; i < enic->wq_count; i++)
			FUNC11(&enic->napi[FUNC1(enic, i)]);

	if (!FUNC6(enic) && !FUNC7(enic))
		FUNC2(enic);

	for (i = 0; i < enic->wq_count; i++) {
		err = FUNC23(&enic->wq[i]);
		if (err)
			return err;
	}
	for (i = 0; i < enic->rq_count; i++) {
		err = FUNC21(&enic->rq[i]);
		if (err)
			return err;
	}

	FUNC4(enic);
	FUNC10(enic);
	FUNC5(enic);

	for (i = 0; i < enic->wq_count; i++)
		FUNC22(&enic->wq[i], enic_free_wq_buf);
	for (i = 0; i < enic->rq_count; i++)
		FUNC20(&enic->rq[i], enic_free_rq_buf);
	for (i = 0; i < enic->cq_count; i++)
		FUNC15(&enic->cq[i]);
	for (i = 0; i < enic->intr_count; i++)
		FUNC17(&enic->intr[i]);

	return 0;
}