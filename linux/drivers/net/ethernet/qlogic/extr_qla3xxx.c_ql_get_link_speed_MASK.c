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
struct ql3_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPEED_1000 ; 
 scalar_t__ FUNC0 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql3_adapter*) ; 

__attribute__((used)) static u32 FUNC2(struct ql3_adapter *qdev)
{
	if (FUNC0(qdev))
		return SPEED_1000;
	else
		return FUNC1(qdev);
}