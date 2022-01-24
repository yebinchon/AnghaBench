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
struct hinic_eq {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ HINIC_AEQ ; 
 scalar_t__ HINIC_CEQ ; 
 int /*<<< orphan*/  FUNC0 (struct hinic_eq*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_eq*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_eq*) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct hinic_eq *eq = data;

	if (eq->type == HINIC_AEQ)
		FUNC0(eq);
	else if (eq->type == HINIC_CEQ)
		FUNC1(eq);

	FUNC2(eq);
}