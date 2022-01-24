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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int BRCMS_10_MHZ ; 
 int BRCMS_20_MHZ ; 
 int BRCMS_40_MHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(u16 chanspec)
{
	if (FUNC1(chanspec))
		return BRCMS_40_MHZ;
	if (FUNC0(chanspec))
		return BRCMS_20_MHZ;

	return BRCMS_10_MHZ;
}