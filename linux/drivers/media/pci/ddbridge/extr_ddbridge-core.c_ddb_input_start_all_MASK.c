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
struct ddb_output {TYPE_1__* port; } ;
struct ddb_input {struct ddb_output* redo; } ;
struct TYPE_2__ {struct ddb_input** input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ddb_input*) ; 
 int /*<<< orphan*/  FUNC1 (struct ddb_output*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  redirect_lock ; 

__attribute__((used)) static void FUNC4(struct ddb_input *input)
{
	struct ddb_input *i = input;
	struct ddb_output *o;

	FUNC2(&redirect_lock);
	while (i && (o = i->redo)) {
		FUNC1(o);
		i = o->port->input[0];
		if (i)
			FUNC0(i);
	}
	FUNC0(input);
	FUNC3(&redirect_lock);
}