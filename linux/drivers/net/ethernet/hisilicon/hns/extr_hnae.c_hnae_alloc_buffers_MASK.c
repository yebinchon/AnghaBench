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
struct hnae_ring {int desc_num; } ;

/* Variables and functions */
 int FUNC0 (struct hnae_ring*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae_ring*,int) ; 

__attribute__((used)) static int FUNC2(struct hnae_ring *ring)
{
	int i, j, ret;

	for (i = 0; i < ring->desc_num; i++) {
		ret = FUNC0(ring, i);
		if (ret)
			goto out_buffer_fail;
	}

	return 0;

out_buffer_fail:
	for (j = i - 1; j >= 0; j--)
		FUNC1(ring, j);
	return ret;
}