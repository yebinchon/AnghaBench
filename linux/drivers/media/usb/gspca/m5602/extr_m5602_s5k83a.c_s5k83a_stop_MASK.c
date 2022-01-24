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
struct sd {scalar_t__ rotation_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ) ; 

int FUNC2(struct sd *sd)
{
	if (sd->rotation_thread)
		FUNC0(sd->rotation_thread);

	return FUNC1(sd, 0);
}