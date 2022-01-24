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
struct cx231xx {int video_input; int /*<<< orphan*/  dev; int /*<<< orphan*/  ctl_ainput; } ;
struct TYPE_2__ {int /*<<< orphan*/  vmux; int /*<<< orphan*/  amux; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  s_routing ; 
 int /*<<< orphan*/  video ; 

void FUNC6(struct cx231xx *dev, int index)
{
	dev->video_input = index;
	dev->ctl_ainput = FUNC0(index)->amux;

	FUNC3(dev, index);

	FUNC4(dev, video, s_routing, FUNC0(index)->vmux, 0, 0);

	FUNC2(dev, dev->ctl_ainput);

	FUNC5(dev->dev, "video_mux : %d\n", index);

	/* do mode control overrides if required */
	FUNC1(dev);
}