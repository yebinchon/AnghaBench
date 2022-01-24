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
struct au0828_dev {int /*<<< orphan*/  dev_state; int /*<<< orphan*/  stream_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_DISCONNECTED ; 
 int ENODEV ; 
 int /*<<< orphan*/  STREAM_INTERRUPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct au0828_dev *dev)
{
	dev->stream_state = STREAM_INTERRUPT;
	if (FUNC0(DEV_DISCONNECTED, &dev->dev_state))
		return -ENODEV;
	return 0;
}