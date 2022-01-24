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
struct x25_asy {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; int /*<<< orphan*/ * xbuff; int /*<<< orphan*/ * rbuff; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLF_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct x25_asy *sl)
{
	/* Free all X.25 frame buffers. */
	FUNC0(sl->rbuff);
	sl->rbuff = NULL;
	FUNC0(sl->xbuff);
	sl->xbuff = NULL;

	if (!FUNC2(SLF_INUSE, &sl->flags))
		FUNC1(sl->dev, "x25_asy_free for already free unit\n");
}