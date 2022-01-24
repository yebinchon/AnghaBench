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
struct netdevsim {scalar_t__ bpf_offloaded; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct netdevsim*) ; 

int FUNC1(struct netdevsim *ns)
{
	if (ns->bpf_offloaded && !FUNC0(ns))
		return -EBUSY;
	return 0;
}