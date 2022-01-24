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
struct TYPE_4__ {int /*<<< orphan*/  pts; } ;
struct TYPE_3__ {int /*<<< orphan*/  format; int /*<<< orphan*/  speed; } ;
struct v4l2_decoder_cmd {scalar_t__ cmd; TYPE_2__ stop; TYPE_1__ start; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ V4L2_DEC_CMD_START ; 
 scalar_t__ V4L2_DEC_CMD_STOP ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC2(const void *arg, bool write_only)
{
	const struct v4l2_decoder_cmd *p = arg;

	FUNC0("cmd=%d, flags=0x%x\n", p->cmd, p->flags);

	if (p->cmd == V4L2_DEC_CMD_START)
		FUNC1("speed=%d, format=%u\n",
				p->start.speed, p->start.format);
	else if (p->cmd == V4L2_DEC_CMD_STOP)
		FUNC1("pts=%llu\n", p->stop.pts);
}