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
struct dma_info {scalar_t__ nrxd; int /*<<< orphan*/  core; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int D64_RS0_CD_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dma_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr ; 
 int /*<<< orphan*/  status0 ; 

__attribute__((used)) static bool FUNC3(struct dma_info *di)
{
	FUNC2(di->core, "%s:\n", di->name);

	if (di->nrxd == 0)
		return true;

	return ((FUNC1(di->core,
			     FUNC0(di, status0)) & D64_RS0_CD_MASK) ==
		(FUNC1(di->core, FUNC0(di, ptr)) &
		 D64_RS0_CD_MASK));
}