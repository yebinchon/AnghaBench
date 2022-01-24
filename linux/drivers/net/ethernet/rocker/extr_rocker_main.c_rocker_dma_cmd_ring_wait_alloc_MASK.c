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
struct rocker_wait {int dummy; } ;
struct rocker_desc_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct rocker_desc_info*,struct rocker_wait*) ; 
 struct rocker_wait* FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct rocker_desc_info *desc_info)
{
	struct rocker_wait *wait;

	wait = FUNC1();
	if (!wait)
		return -ENOMEM;
	FUNC0(desc_info, wait);
	return 0;
}