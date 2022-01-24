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
struct kref {int dummy; } ;
struct command {struct command* buffer; int /*<<< orphan*/  queue_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  command_count ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct command*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct command* FUNC5 (struct kref*) ; 

void FUNC6(struct kref *kref)
{
	struct command *cmd = FUNC5(kref);

	FUNC4(&cmd->queue_node);
	FUNC0(&command_count);
	FUNC2("command count: %d\n", FUNC1(&command_count));
	FUNC3(cmd->buffer);
	FUNC3(cmd);
}