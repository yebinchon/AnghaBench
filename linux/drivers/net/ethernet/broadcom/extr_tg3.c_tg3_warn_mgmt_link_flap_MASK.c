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
struct tg3 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_ASF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tg3 *tp)
{
	if (FUNC1(tp, ENABLE_ASF))
		FUNC0(tp->dev,
			    "Management side-band traffic will be interrupted during phy settings change\n");
}