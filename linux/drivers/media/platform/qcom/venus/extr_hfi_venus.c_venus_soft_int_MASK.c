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
struct venus_hfi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPU_IC_SOFTINT ; 
 int /*<<< orphan*/  CPU_IC_SOFTINT_H2A_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct venus_hfi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct venus_hfi_device *hdev)
{
	FUNC1(hdev, CPU_IC_SOFTINT, FUNC0(CPU_IC_SOFTINT_H2A_SHIFT));
}