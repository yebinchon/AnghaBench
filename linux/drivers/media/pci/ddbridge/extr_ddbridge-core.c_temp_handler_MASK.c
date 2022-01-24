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
struct ddb_link {int /*<<< orphan*/  temp_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb_link*) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct ddb_link *link = (struct ddb_link *)data;

	FUNC0(&link->temp_lock);
	FUNC2(link);
	FUNC1(&link->temp_lock);
}