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
struct r8152 {int /*<<< orphan*/  flags; int /*<<< orphan*/  eee_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct r8152 *tp)
{
	FUNC2(tp, tp->eee_en);
	FUNC0(tp, true);
	FUNC1(tp);

	FUNC3(PHY_RESET, &tp->flags);
}