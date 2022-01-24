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
struct rsrc_bmap {int /*<<< orphan*/  bmap; int /*<<< orphan*/  max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct rsrc_bmap *rsrc)
{
	rsrc->bmap = FUNC1(FUNC0(rsrc->max),
			     sizeof(long), GFP_KERNEL);
	if (!rsrc->bmap)
		return -ENOMEM;
	return 0;
}