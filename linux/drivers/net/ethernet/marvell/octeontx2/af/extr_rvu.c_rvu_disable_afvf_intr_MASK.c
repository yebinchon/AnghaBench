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
struct rvu {int vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rvu *rvu)
{
	int vfs = rvu->vfs;

	FUNC4(rvu, FUNC3(0), FUNC0(vfs));
	FUNC4(rvu, FUNC1(0), FUNC0(vfs));
	FUNC4(rvu, FUNC2(0), FUNC0(vfs));
	if (vfs <= 64)
		return;

	FUNC4(rvu, FUNC3(1),
		      FUNC0(vfs - 64));
	FUNC4(rvu, FUNC1(1), FUNC0(vfs - 64));
	FUNC4(rvu, FUNC2(1), FUNC0(vfs - 64));
}