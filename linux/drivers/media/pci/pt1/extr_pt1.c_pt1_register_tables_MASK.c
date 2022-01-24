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
typedef  int u32 ;
struct pt1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt1*,int,int) ; 

__attribute__((used)) static void FUNC1(struct pt1 *pt1, u32 first_pfn)
{
	FUNC0(pt1, 5, first_pfn);
	FUNC0(pt1, 0, 0x0c000040);
}