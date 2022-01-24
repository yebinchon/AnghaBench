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
struct hns3_enet_ring {int dummy; } ;
struct hns3_desc_cb {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hns3_enet_ring*,struct hns3_desc_cb*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_ring*,struct hns3_desc_cb*) ; 
 int FUNC2 (struct hns3_enet_ring*,struct hns3_desc_cb*) ; 

__attribute__((used)) static int FUNC3(struct hns3_enet_ring *ring,
				   struct hns3_desc_cb *cb)
{
	int ret;

	ret = FUNC0(ring, cb);
	if (ret)
		goto out;

	ret = FUNC2(ring, cb);
	if (ret)
		goto out_with_buf;

	return 0;

out_with_buf:
	FUNC1(ring, cb);
out:
	return ret;
}