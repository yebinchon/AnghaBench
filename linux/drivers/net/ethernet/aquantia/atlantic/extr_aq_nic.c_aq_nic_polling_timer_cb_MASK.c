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
struct timer_list {int dummy; } ;
struct aq_vec_s {int dummy; } ;
struct aq_nic_s {unsigned int aq_vecs; int /*<<< orphan*/  polling_timer; struct aq_vec_s** aq_vec; } ;

/* Variables and functions */
 scalar_t__ AQ_CFG_POLLING_TIMER_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,void*) ; 
 struct aq_nic_s* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  polling_timer ; 
 struct aq_nic_s* self ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct aq_nic_s *self = FUNC1(self, t, polling_timer);
	struct aq_vec_s *aq_vec = NULL;
	unsigned int i = 0U;

	for (i = 0U, aq_vec = self->aq_vec[0];
		self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i])
		FUNC0(i, (void *)aq_vec);

	FUNC2(&self->polling_timer, jiffies +
		  AQ_CFG_POLLING_TIMER_INTERVAL);
}