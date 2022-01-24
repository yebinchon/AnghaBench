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
 struct rocker_wait* FUNC0 (struct rocker_desc_info const*) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker_wait*) ; 

__attribute__((used)) static void
FUNC2(const struct rocker_desc_info *desc_info)
{
	struct rocker_wait *wait = FUNC0(desc_info);

	FUNC1(wait);
}