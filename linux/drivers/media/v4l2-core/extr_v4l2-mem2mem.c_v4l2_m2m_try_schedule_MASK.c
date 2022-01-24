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
struct v4l2_m2m_dev {int dummy; } ;
struct v4l2_m2m_ctx {struct v4l2_m2m_dev* m2m_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_m2m_dev*,struct v4l2_m2m_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_m2m_dev*) ; 

void FUNC2(struct v4l2_m2m_ctx *m2m_ctx)
{
	struct v4l2_m2m_dev *m2m_dev = m2m_ctx->m2m_dev;

	FUNC0(m2m_dev, m2m_ctx);
	FUNC1(m2m_dev);
}