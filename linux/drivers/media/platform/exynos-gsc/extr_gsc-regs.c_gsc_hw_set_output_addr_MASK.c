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
struct gsc_dev {scalar_t__ regs; } ;
struct gsc_addr {int /*<<< orphan*/  cr; int /*<<< orphan*/  cb; int /*<<< orphan*/  y; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct gsc_dev *dev,
			     struct gsc_addr *addr, int index)
{
	FUNC3("dst_buf[%d]: %pad, cb: %pad, cr: %pad",
			index, &addr->y, &addr->cb, &addr->cr);
	FUNC4(addr->y, dev->regs + FUNC2(index));
	FUNC4(addr->cb, dev->regs + FUNC0(index));
	FUNC4(addr->cr, dev->regs + FUNC1(index));
}