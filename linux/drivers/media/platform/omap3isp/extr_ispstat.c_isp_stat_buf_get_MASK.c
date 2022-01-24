#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap3isp_stat_data {scalar_t__ buf_size; int /*<<< orphan*/  buf; } ;
struct ispstat_buffer {int empty; scalar_t__ buf_size; int /*<<< orphan*/  virt_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct ispstat {TYPE_2__ subdev; TYPE_1__* isp; struct ispstat_buffer* locked_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  stat_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ispstat_buffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ispstat*,struct ispstat_buffer*) ; 
 struct ispstat_buffer* FUNC6 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC7 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC8 (struct ispstat*,struct ispstat_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct ispstat_buffer *FUNC11(struct ispstat *stat,
					       struct omap3isp_stat_data *data)
{
	int rval = 0;
	unsigned long flags;
	struct ispstat_buffer *buf;

	FUNC9(&stat->isp->stat_lock, flags);

	while (1) {
		buf = FUNC6(stat);
		if (!buf) {
			FUNC10(&stat->isp->stat_lock, flags);
			FUNC2(stat->isp->dev, "%s: cannot find a buffer.\n",
				stat->subdev.name);
			return FUNC0(-EBUSY);
		}
		if (FUNC5(stat, buf)) {
			FUNC2(stat->isp->dev,
				"%s: current buffer has corrupted data\n.",
				stat->subdev.name);
			/* Mark empty because it doesn't have valid data. */
			buf->empty = 1;
		} else {
			/* Buffer isn't corrupted. */
			break;
		}
	}

	stat->locked_buf = buf;

	FUNC10(&stat->isp->stat_lock, flags);

	if (buf->buf_size > data->buf_size) {
		FUNC4(stat->isp->dev,
			 "%s: userspace's buffer size is not enough.\n",
			 stat->subdev.name);
		FUNC7(stat);
		return FUNC0(-EINVAL);
	}

	FUNC8(stat, buf);

	rval = FUNC1(data->buf,
			    buf->virt_addr,
			    buf->buf_size);

	if (rval) {
		FUNC3(stat->isp->dev,
			 "%s: failed copying %d bytes of stat data\n",
			 stat->subdev.name, rval);
		buf = FUNC0(-EFAULT);
		FUNC7(stat);
	}

	return buf;
}