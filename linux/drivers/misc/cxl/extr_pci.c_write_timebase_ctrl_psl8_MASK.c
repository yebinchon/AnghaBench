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
struct cxl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_TB_CTLSTAT ; 
 int PSL_2048_250MHZ_CYCLES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cxl *adapter)
{
	FUNC1(adapter, CXL_PSL_TB_CTLSTAT,
		     FUNC0(2 * PSL_2048_250MHZ_CYCLES));
}