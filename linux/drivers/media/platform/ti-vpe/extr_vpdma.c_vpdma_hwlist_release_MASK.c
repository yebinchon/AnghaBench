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
struct vpdma_data {int* hwlist_used; int /*<<< orphan*/  lock; void* hwlist_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void *FUNC2(struct vpdma_data *vpdma, int list_num)
{
	void *priv;
	unsigned long flags;

	FUNC0(&vpdma->lock, flags);
	vpdma->hwlist_used[list_num] = false;
	priv = vpdma->hwlist_priv;
	FUNC1(&vpdma->lock, flags);

	return priv;
}