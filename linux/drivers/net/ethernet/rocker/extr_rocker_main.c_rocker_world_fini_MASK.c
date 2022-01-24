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
struct rocker_world_ops {int /*<<< orphan*/  (* fini ) (struct rocker*) ;} ;
struct rocker {int /*<<< orphan*/  wpriv; struct rocker_world_ops* wops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker*) ; 

__attribute__((used)) static void FUNC2(struct rocker *rocker)
{
	struct rocker_world_ops *wops = rocker->wops;

	if (!wops || !wops->fini)
		return;
	wops->fini(rocker);
	FUNC0(rocker->wpriv);
}