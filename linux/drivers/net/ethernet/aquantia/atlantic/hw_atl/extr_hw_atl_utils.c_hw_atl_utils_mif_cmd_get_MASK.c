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
typedef  int /*<<< orphan*/  u32 ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_ATL_MIF_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(struct aq_hw_s *self)
{
	return FUNC0(self, HW_ATL_MIF_CMD);
}