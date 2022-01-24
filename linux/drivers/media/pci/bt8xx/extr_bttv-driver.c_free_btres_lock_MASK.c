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
struct bttv_fh {int resources; } ;
struct bttv {int resources; } ;

/* Variables and functions */
 int VBI_RESOURCES ; 
 int VIDEO_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static
void FUNC3(struct bttv *btv, struct bttv_fh *fh, int bits)
{
	if ((fh->resources & bits) != bits) {
		/* trying to free resources not allocated by us ... */
		FUNC2("BUG! (btres)\n");
	}
	fh->resources  &= ~bits;
	btv->resources &= ~bits;

	bits = btv->resources;

	if (0 == (bits & VIDEO_RESOURCES))
		FUNC1(btv);

	if (0 == (bits & VBI_RESOURCES))
		FUNC0(btv);
}