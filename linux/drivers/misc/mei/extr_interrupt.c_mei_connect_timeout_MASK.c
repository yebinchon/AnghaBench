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
struct mei_device {scalar_t__ hbm_f_dot_supported; } ;
struct mei_cl {scalar_t__ state; int /*<<< orphan*/  wait; struct mei_device* dev; } ;

/* Variables and functions */
 scalar_t__ MEI_FILE_CONNECTING ; 
 scalar_t__ MEI_FILE_DISCONNECT_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mei_cl *cl)
{
	struct mei_device *dev = cl->dev;

	if (cl->state == MEI_FILE_CONNECTING) {
		if (dev->hbm_f_dot_supported) {
			cl->state = MEI_FILE_DISCONNECT_REQUIRED;
			FUNC1(&cl->wait);
			return;
		}
	}
	FUNC0(dev);
}