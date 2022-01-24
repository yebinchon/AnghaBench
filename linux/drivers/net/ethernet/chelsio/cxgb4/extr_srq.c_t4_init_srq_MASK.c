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
struct srq_data {int srq_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  comp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct srq_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct srq_data *FUNC3(int srq_size)
{
	struct srq_data *s;

	s = FUNC1(sizeof(*s), GFP_KERNEL);
	if (!s)
		return NULL;

	s->srq_size = srq_size;
	FUNC0(&s->comp);
	FUNC2(&s->lock);

	return s;
}