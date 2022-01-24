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
struct tg3 {scalar_t__ ape_hb_jiffies; int /*<<< orphan*/  ape_hb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_APE ; 
 int /*<<< orphan*/  TG3_APE_HOST_HEARTBEAT_COUNT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct tg3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct tg3 *tp,
				   unsigned long interval)
{
	/* Check if hb interval has exceeded */
	if (!FUNC1(tp, ENABLE_APE) ||
	    FUNC2(jiffies, tp->ape_hb_jiffies + interval))
		return;

	FUNC0(tp, TG3_APE_HOST_HEARTBEAT_COUNT, tp->ape_hb++);
	tp->ape_hb_jiffies = jiffies;
}