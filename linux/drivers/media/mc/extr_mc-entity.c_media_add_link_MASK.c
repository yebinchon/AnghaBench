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
struct media_link {int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct media_link* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static struct media_link *FUNC2(struct list_head *head)
{
	struct media_link *link;

	link = FUNC0(sizeof(*link), GFP_KERNEL);
	if (link == NULL)
		return NULL;

	FUNC1(&link->list, head);

	return link;
}