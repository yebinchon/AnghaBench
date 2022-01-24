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
struct vpdma_data {int* hwlist_used; int /*<<< orphan*/  lock; void** hwlist_priv; } ;

/* Variables and functions */
 int VPDMA_MAX_NUM_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC2(struct vpdma_data *vpdma, void *priv)
{
	int i, list_num = -1;
	unsigned long flags;

	FUNC0(&vpdma->lock, flags);
	for (i = 0; i < VPDMA_MAX_NUM_LIST &&
	    vpdma->hwlist_used[i] == true; i++)
		;

	if (i < VPDMA_MAX_NUM_LIST) {
		list_num = i;
		vpdma->hwlist_used[i] = true;
		vpdma->hwlist_priv[i] = priv;
	}
	FUNC1(&vpdma->lock, flags);

	return list_num;
}