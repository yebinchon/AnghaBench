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

/* Variables and functions */
 int /*<<< orphan*/  CLAMPCFG ; 
 int /*<<< orphan*/  CSCCTL ; 
 int /*<<< orphan*/  DFCCTL ; 
 int /*<<< orphan*/  LINCFG0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
	/* disable BC */
	FUNC0(0, CLAMPCFG);
	/* disable vdfc */
	FUNC0(0, DFCCTL);
	/* disable CSC */
	FUNC0(0, CSCCTL);
	/* disable linearization */
	FUNC0(0, LINCFG0);
	/* disable other modules here as they are supported */
}