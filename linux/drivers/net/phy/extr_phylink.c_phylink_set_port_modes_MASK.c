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
 int /*<<< orphan*/  AUI ; 
 int /*<<< orphan*/  BNC ; 
 int /*<<< orphan*/  Backplane ; 
 int /*<<< orphan*/  FIBRE ; 
 int /*<<< orphan*/  MII ; 
 int /*<<< orphan*/  TP ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ ) ; 

void FUNC1(unsigned long *mask)
{
	FUNC0(mask, TP);
	FUNC0(mask, AUI);
	FUNC0(mask, MII);
	FUNC0(mask, FIBRE);
	FUNC0(mask, BNC);
	FUNC0(mask, Backplane);
}