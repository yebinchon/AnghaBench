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
struct admin_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  res; int /*<<< orphan*/  inst; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct admin_queue*) ; 
 struct admin_queue* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,struct admin_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct rvu *rvu, struct admin_queue **ad_queue,
		 int qsize, int inst_size, int res_size)
{
	struct admin_queue *aq;
	int err;

	*ad_queue = FUNC1(rvu->dev, sizeof(*aq), GFP_KERNEL);
	if (!*ad_queue)
		return -ENOMEM;
	aq = *ad_queue;

	/* Alloc memory for instructions i.e AQ */
	err = FUNC2(rvu->dev, &aq->inst, qsize, inst_size);
	if (err) {
		FUNC0(rvu->dev, aq);
		return err;
	}

	/* Alloc memory for results */
	err = FUNC2(rvu->dev, &aq->res, qsize, res_size);
	if (err) {
		FUNC3(rvu, aq);
		return err;
	}

	FUNC4(&aq->lock);
	return 0;
}