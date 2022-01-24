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
struct v4l2_create_buffers {int /*<<< orphan*/  format; int /*<<< orphan*/  memory; int /*<<< orphan*/  count; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v4l2_memory_names ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(const void *arg, bool write_only)
{
	const struct v4l2_create_buffers *p = arg;

	FUNC0("index=%d, count=%d, memory=%s, ",
			p->index, p->count,
			FUNC1(p->memory, v4l2_memory_names));
	FUNC2(&p->format, write_only);
}