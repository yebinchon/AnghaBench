#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ubiblock {TYPE_1__* gd; int /*<<< orphan*/  tag_set; int /*<<< orphan*/  rq; int /*<<< orphan*/  wq; } ;
struct TYPE_4__ {int /*<<< orphan*/  first_minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  ubiblock_minor_idr ; 

__attribute__((used)) static void FUNC8(struct ubiblock *dev)
{
	/* Stop new requests to arrive */
	FUNC2(dev->gd);
	/* Flush pending work */
	FUNC3(dev->wq);
	/* Finally destroy the blk queue */
	FUNC0(dev->rq);
	FUNC1(&dev->tag_set);
	FUNC4(FUNC5(dev->gd), "released");
	FUNC6(&ubiblock_minor_idr, dev->gd->first_minor);
	FUNC7(dev->gd);
}