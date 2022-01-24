#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sdio_func_tuple {struct sdio_func_tuple* next; } ;
struct sdio_func {TYPE_1__* card; struct sdio_func_tuple* tuples; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct sdio_func_tuple* tuples; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdio_func_tuple*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct sdio_func *func)
{
	struct sdio_func_tuple *tuple, *victim;

	tuple = func->tuples;

	while (tuple && tuple != func->card->tuples) {
		victim = tuple;
		tuple = tuple->next;
		FUNC0(victim);
	}

	func->tuples = NULL;

	/*
	 * We have now removed the link to the tuples in the
	 * card structure, so remove the reference.
	 */
	FUNC1(&func->card->dev);
}