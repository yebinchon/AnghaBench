#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct media_link {int /*<<< orphan*/  flags; TYPE_1__* reverse; TYPE_2__* sink; TYPE_2__* source; } ;
struct TYPE_5__ {int /*<<< orphan*/  entity; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  link_setup ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct media_link *link, u32 flags)
{
	int ret;

	/* Notify both entities. */
	ret = FUNC0(link->source->entity, link_setup,
				link->source, link->sink, flags);
	if (ret < 0 && ret != -ENOIOCTLCMD)
		return ret;

	ret = FUNC0(link->sink->entity, link_setup,
				link->sink, link->source, flags);
	if (ret < 0 && ret != -ENOIOCTLCMD) {
		FUNC0(link->source->entity, link_setup,
				  link->source, link->sink, link->flags);
		return ret;
	}

	link->flags = flags;
	link->reverse->flags = link->flags;

	return 0;
}