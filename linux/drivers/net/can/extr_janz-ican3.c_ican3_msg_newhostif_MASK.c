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
struct ican3_msg {int /*<<< orphan*/  len; int /*<<< orphan*/  spec; } ;
struct ican3_dev {int iftype; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NEWHOSTIF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ican3_dev*,struct ican3_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ican3_msg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ican3_dev *mod)
{
	struct ican3_msg msg;
	int ret;

	FUNC3(&msg, 0, sizeof(msg));
	msg.spec = MSG_NEWHOSTIF;
	msg.len = FUNC1(0);

	/* If we're not using the old interface, switching seems bogus */
	FUNC0(mod->iftype != 0);

	ret = FUNC2(mod, &msg);
	if (ret)
		return ret;

	/* mark the module as using the new host interface */
	mod->iftype = 1;
	return 0;
}