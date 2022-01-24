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
struct iguanair {int /*<<< orphan*/  rc; TYPE_2__* packet; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  direction; scalar_t__ start; } ;
struct TYPE_4__ {TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RECEIVER_OFF ; 
 int /*<<< orphan*/  CMD_RECEIVER_ON ; 
 int /*<<< orphan*/  DIR_OUT ; 
 int FUNC0 (struct iguanair*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct iguanair *ir, bool enable)
{
	ir->packet->header.start = 0;
	ir->packet->header.direction = DIR_OUT;
	ir->packet->header.cmd = enable ? CMD_RECEIVER_ON : CMD_RECEIVER_OFF;

	if (enable)
		FUNC1(ir->rc);

	return FUNC0(ir, sizeof(ir->packet->header));
}