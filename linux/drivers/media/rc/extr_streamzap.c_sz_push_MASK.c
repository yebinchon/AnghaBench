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
struct streamzap_ir {int /*<<< orphan*/  rdev; int /*<<< orphan*/  dev; } ;
struct ir_raw_event {int /*<<< orphan*/  duration; scalar_t__ pulse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 

__attribute__((used)) static void FUNC2(struct streamzap_ir *sz, struct ir_raw_event rawir)
{
	FUNC0(sz->dev, "Storing %s with duration %u us\n",
		(rawir.pulse ? "pulse" : "space"), rawir.duration);
	FUNC1(sz->rdev, &rawir);
}