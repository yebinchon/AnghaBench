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
struct bgx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  acpi_disabled ; 
 int FUNC0 (struct bgx*) ; 
 int FUNC1 (struct bgx*) ; 

__attribute__((used)) static int FUNC2(struct bgx *bgx)
{
	if (!acpi_disabled)
		return FUNC0(bgx);

	return FUNC1(bgx);
}