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
struct csid_device {TYPE_1__* camss; int /*<<< orphan*/  reset_complete; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSID_RESET_TIMEOUT_MS ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct csid_device *csid)
{
	unsigned long time;

	FUNC3(&csid->reset_complete);

	FUNC5(0x7fff, csid->base +
		       FUNC0(csid->camss->version));

	time = FUNC4(&csid->reset_complete,
		FUNC2(CSID_RESET_TIMEOUT_MS));
	if (!time) {
		FUNC1(csid->camss->dev, "CSID reset timeout\n");
		return -EIO;
	}

	return 0;
}