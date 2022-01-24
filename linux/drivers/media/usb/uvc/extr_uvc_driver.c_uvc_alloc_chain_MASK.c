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
struct uvc_video_chain {int /*<<< orphan*/  prio; struct uvc_device* dev; int /*<<< orphan*/  ctrl_mutex; int /*<<< orphan*/  entities; } ;
struct uvc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct uvc_video_chain* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct uvc_video_chain *FUNC4(struct uvc_device *dev)
{
	struct uvc_video_chain *chain;

	chain = FUNC1(sizeof(*chain), GFP_KERNEL);
	if (chain == NULL)
		return NULL;

	FUNC0(&chain->entities);
	FUNC2(&chain->ctrl_mutex);
	chain->dev = dev;
	FUNC3(&chain->prio);

	return chain;
}