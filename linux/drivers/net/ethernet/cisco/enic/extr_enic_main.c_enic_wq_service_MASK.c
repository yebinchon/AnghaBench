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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct vnic_dev {int dummy; } ;
struct enic {int /*<<< orphan*/ * wq_lock; int /*<<< orphan*/  netdev; int /*<<< orphan*/ * wq; } ;
struct cq_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENIC_DESC_MAX_SPLITS ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  enic_wq_free_buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct enic* FUNC5 (struct vnic_dev*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct cq_desc*,size_t,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC8(struct vnic_dev *vdev, struct cq_desc *cq_desc,
	u8 type, u16 q_number, u16 completed_index, void *opaque)
{
	struct enic *enic = FUNC5(vdev);

	FUNC3(&enic->wq_lock[q_number]);

	FUNC7(&enic->wq[q_number], cq_desc,
		completed_index, enic_wq_free_buf,
		opaque);

	if (FUNC1(FUNC0(enic->netdev, q_number)) &&
	    FUNC6(&enic->wq[q_number]) >=
	    (MAX_SKB_FRAGS + ENIC_DESC_MAX_SPLITS))
		FUNC2(enic->netdev, q_number);

	FUNC4(&enic->wq_lock[q_number]);

	return 0;
}