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
struct v4l2_m2m_ops {int /*<<< orphan*/  device_run; } ;
struct v4l2_m2m_dev {int /*<<< orphan*/  job_work; int /*<<< orphan*/  job_spinlock; int /*<<< orphan*/  job_queue; struct v4l2_m2m_ops const* m2m_ops; int /*<<< orphan*/ * curr_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct v4l2_m2m_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 struct v4l2_m2m_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v4l2_m2m_device_run_work ; 

struct v4l2_m2m_dev *FUNC6(const struct v4l2_m2m_ops *m2m_ops)
{
	struct v4l2_m2m_dev *m2m_dev;

	if (!m2m_ops || FUNC3(!m2m_ops->device_run))
		return FUNC0(-EINVAL);

	m2m_dev = FUNC4(sizeof *m2m_dev, GFP_KERNEL);
	if (!m2m_dev)
		return FUNC0(-ENOMEM);

	m2m_dev->curr_ctx = NULL;
	m2m_dev->m2m_ops = m2m_ops;
	FUNC1(&m2m_dev->job_queue);
	FUNC5(&m2m_dev->job_spinlock);
	FUNC2(&m2m_dev->job_work, v4l2_m2m_device_run_work);

	return m2m_dev;
}