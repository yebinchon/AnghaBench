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
struct gru_message_queue_desc {int /*<<< orphan*/ * mq; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gru_message_queue_desc*) ; 
 int xpSuccess ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long,int) ; 

__attribute__((used)) static enum xp_retval
FUNC2(struct gru_message_queue_desc *gru_mq_desc,
				unsigned long gru_mq_desc_gpa)
{
	enum xp_retval ret;

	ret = FUNC1(FUNC0(gru_mq_desc), gru_mq_desc_gpa,
			       sizeof(struct gru_message_queue_desc));
	if (ret == xpSuccess)
		gru_mq_desc->mq = NULL;

	return ret;
}