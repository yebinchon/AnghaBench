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
struct tg3_hw_stats {int dummy; } ;
struct tg3 {scalar_t__ hw_stats; int /*<<< orphan*/  estats_prev; int /*<<< orphan*/  net_stats_prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int) ; 
 int FUNC3 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC7 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tg3*,int) ; 

__attribute__((used)) static int FUNC10(struct tg3 *tp, int kind, bool silent)
{
	int err;

	FUNC6(tp);

	FUNC9(tp, kind);

	FUNC2(tp, silent);
	err = FUNC3(tp);

	FUNC0(tp, false);

	FUNC7(tp, kind);
	FUNC8(tp, kind);

	if (tp->hw_stats) {
		/* Save the stats across chip resets... */
		FUNC5(tp, &tp->net_stats_prev);
		FUNC4(tp, &tp->estats_prev);

		/* And make sure the next sample is new data */
		FUNC1(tp->hw_stats, 0, sizeof(struct tg3_hw_stats));
	}

	return err;
}