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
struct camif_vp {int /*<<< orphan*/  scaler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC2 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC3 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC4 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC5 (struct camif_vp*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct camif_vp *vp)
{
	FUNC0(FUNC5(vp, &vp->scaler));
	FUNC3(vp);
	FUNC1(vp);
	FUNC4(vp);
	FUNC2(vp);
}