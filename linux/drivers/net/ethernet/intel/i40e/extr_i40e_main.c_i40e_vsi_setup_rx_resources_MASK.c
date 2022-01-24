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
struct i40e_vsi {int num_queue_pairs; int /*<<< orphan*/ * rx_rings; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct i40e_vsi *vsi)
{
	int i, err = 0;

	for (i = 0; i < vsi->num_queue_pairs && !err; i++)
		err = FUNC0(vsi->rx_rings[i]);
	return err;
}