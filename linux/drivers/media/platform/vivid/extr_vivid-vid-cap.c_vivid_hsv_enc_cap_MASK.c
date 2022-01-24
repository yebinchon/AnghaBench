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
struct vivid_dev {unsigned int hsv_enc_out; int /*<<< orphan*/  tpg; int /*<<< orphan*/  loop_video; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vivid_dev*) ; 
 scalar_t__ FUNC2 (struct vivid_dev*) ; 

__attribute__((used)) static unsigned int FUNC3(struct vivid_dev *dev)
{
	if (!dev->loop_video || FUNC2(dev) || FUNC1(dev))
		return FUNC0(&dev->tpg);
	return dev->hsv_enc_out;
}