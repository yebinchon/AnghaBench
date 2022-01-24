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
struct media_link {int /*<<< orphan*/  graph_obj; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct media_link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct media_link *link)
{
	FUNC1(&link->list);
	FUNC2(&link->graph_obj);
	FUNC0(link);
}