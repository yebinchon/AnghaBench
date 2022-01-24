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
struct rvu {int /*<<< orphan*/  dev; } ;
struct admin_queue {int /*<<< orphan*/  res; int /*<<< orphan*/  inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct admin_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct rvu *rvu, struct admin_queue *aq)
{
	if (!aq)
		return;

	FUNC1(rvu->dev, aq->inst);
	FUNC1(rvu->dev, aq->res);
	FUNC0(rvu->dev, aq);
}