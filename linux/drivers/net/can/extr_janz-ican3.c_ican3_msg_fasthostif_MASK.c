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
struct ican3_msg {unsigned int* data; int /*<<< orphan*/  len; int /*<<< orphan*/  spec; } ;
struct ican3_dev {int iftype; int /*<<< orphan*/  fasttx_start; int /*<<< orphan*/  fastrx_start; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_INITFDPMQUEUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ican3_dev*,struct ican3_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ican3_msg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ican3_dev *mod)
{
	struct ican3_msg msg;
	unsigned int addr;

	FUNC4(&msg, 0, sizeof(msg));
	msg.spec = MSG_INITFDPMQUEUE;
	msg.len = FUNC2(8);

	/* write the tohost queue start address */
	addr = FUNC0(mod->fastrx_start);
	msg.data[0] = addr & 0xff;
	msg.data[1] = (addr >> 8) & 0xff;
	msg.data[2] = (addr >> 16) & 0xff;
	msg.data[3] = (addr >> 24) & 0xff;

	/* write the fromhost queue start address */
	addr = FUNC0(mod->fasttx_start);
	msg.data[4] = addr & 0xff;
	msg.data[5] = (addr >> 8) & 0xff;
	msg.data[6] = (addr >> 16) & 0xff;
	msg.data[7] = (addr >> 24) & 0xff;

	/* If we're not using the new interface yet, we cannot do this */
	FUNC1(mod->iftype != 1);

	return FUNC3(mod, &msg);
}