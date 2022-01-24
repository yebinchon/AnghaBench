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
struct flite_buffer {int /*<<< orphan*/  list; } ;
struct fimc_lite {int /*<<< orphan*/  pending_buf_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct fimc_lite *dev,
					struct flite_buffer *buf)
{
	FUNC0(&buf->list, &dev->pending_buf_q);
}