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
struct pl172_data {int /*<<< orphan*/  clk; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 struct pl172_data* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct amba_device *adev)
{
	struct pl172_data *pl172 = FUNC0(adev);

	FUNC2(pl172->clk);
	FUNC1(adev);

	return 0;
}