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
struct rsrc_bmap {int max; int /*<<< orphan*/  bmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

int FUNC1(struct rsrc_bmap *rsrc)
{
	int used;

	if (!rsrc->bmap)
		return 0;

	used = FUNC0(rsrc->bmap, rsrc->max);
	return (rsrc->max - used);
}