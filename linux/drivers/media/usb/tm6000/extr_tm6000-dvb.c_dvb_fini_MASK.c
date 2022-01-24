#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  has_dvb; } ;
struct tm6000_core {int /*<<< orphan*/ * dvb; TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tm6000_core*) ; 

__attribute__((used)) static int FUNC2(struct tm6000_core *dev)
{
	if (!dev)
		return 0;

	if (!dev->caps.has_dvb)
		return 0;

	if (dev->dvb) {
		FUNC1(dev);
		FUNC0(dev->dvb);
		dev->dvb = NULL;
	}

	return 0;
}