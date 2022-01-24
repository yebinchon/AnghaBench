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
struct hns3_enet_ring {scalar_t__ desc_num; scalar_t__ buf_size; int /*<<< orphan*/ * desc_cb; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hns3_enet_ring*) ; 
 int FUNC4 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns3_enet_ring*) ; 

__attribute__((used)) static int FUNC7(struct hns3_enet_ring *ring)
{
	int ret;

	if (ring->desc_num <= 0 || ring->buf_size <= 0)
		return -EINVAL;

	ring->desc_cb = FUNC1(FUNC6(ring), ring->desc_num,
				     sizeof(ring->desc_cb[0]), GFP_KERNEL);
	if (!ring->desc_cb) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC3(ring);
	if (ret)
		goto out_with_desc_cb;

	if (!FUNC0(ring)) {
		ret = FUNC4(ring);
		if (ret)
			goto out_with_desc;
	}

	return 0;

out_with_desc:
	FUNC5(ring);
out_with_desc_cb:
	FUNC2(FUNC6(ring), ring->desc_cb);
	ring->desc_cb = NULL;
out:
	return ret;
}