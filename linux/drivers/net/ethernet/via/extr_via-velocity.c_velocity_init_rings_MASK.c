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
struct velocity_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct velocity_info*) ; 
 int FUNC2 (struct velocity_info*) ; 
 int FUNC3 (struct velocity_info*) ; 
 int FUNC4 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct velocity_info*,int) ; 

__attribute__((used)) static int FUNC6(struct velocity_info *vptr, int mtu)
{
	int ret;

	FUNC5(vptr, mtu);

	ret = FUNC2(vptr);
	if (ret < 0)
		goto out;

	ret = FUNC3(vptr);
	if (ret < 0)
		goto err_free_dma_rings_0;

	ret = FUNC4(vptr);
	if (ret < 0)
		goto err_free_rd_ring_1;
out:
	return ret;

err_free_rd_ring_1:
	FUNC1(vptr);
err_free_dma_rings_0:
	FUNC0(vptr);
	goto out;
}