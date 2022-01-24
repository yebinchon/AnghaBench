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
struct vim2m_q_data {scalar_t__ sequence; } ;
struct vim2m_ctx {int dummy; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vim2m_q_data* FUNC0 (struct vim2m_ctx*,int /*<<< orphan*/ ) ; 
 struct vim2m_ctx* FUNC1 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC2(struct vb2_queue *q, unsigned int count)
{
	struct vim2m_ctx *ctx = FUNC1(q);
	struct vim2m_q_data *q_data = FUNC0(ctx, q->type);

	if (!q_data)
		return -EINVAL;

	q_data->sequence = 0;
	return 0;
}