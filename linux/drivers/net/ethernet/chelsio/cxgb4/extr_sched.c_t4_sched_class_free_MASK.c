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
struct sched_class {int dummy; } ;
struct port_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCHED_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct port_info*,struct sched_class*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct port_info *pi, struct sched_class *e)
{
	FUNC0(pi, e, SCHED_QUEUE);
}