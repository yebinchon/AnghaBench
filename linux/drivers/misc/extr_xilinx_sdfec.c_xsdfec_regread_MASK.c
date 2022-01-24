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
typedef  scalar_t__ u32 ;
struct xsdfec_dev {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC2(struct xsdfec_dev *xsdfec, u32 addr)
{
	u32 rval;

	rval = FUNC1(xsdfec->regs + addr);
	FUNC0(xsdfec->dev, "Read value = 0x%x from offset 0x%x", rval, addr);
	return rval;
}