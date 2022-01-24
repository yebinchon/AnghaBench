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
struct platform_device {int dummy; } ;
struct htcpld_data {struct htcpld_chip* chip; } ;
struct htcpld_chip {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct htcpld_data* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static void FUNC2(
		struct platform_device *pdev,
		int chip_index)
{
	struct htcpld_data *htcpld;
	struct htcpld_chip *chip;

	/* Get the platform and driver data */
	htcpld = FUNC1(pdev);
	chip = &htcpld->chip[chip_index];

	FUNC0(chip->client);
}