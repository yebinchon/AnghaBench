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
struct fmr2 {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  io; int /*<<< orphan*/  tea; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fmr2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fmr2 *fmr2)
{
	FUNC2(&fmr2->tea);
	FUNC1(fmr2->io, 2);
	FUNC3(&fmr2->v4l2_dev);
	FUNC0(fmr2);
}