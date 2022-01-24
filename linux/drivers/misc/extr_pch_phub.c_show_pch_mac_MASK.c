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
typedef  int /*<<< orphan*/  u8 ;
struct pch_phub_reg {int /*<<< orphan*/  pch_phub_extrom_base_address; int /*<<< orphan*/  pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct pch_phub_reg* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_phub_reg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	u8 mac[8];
	struct pch_phub_reg *chip = FUNC0(dev);
	ssize_t rom_size;

	chip->pch_phub_extrom_base_address = FUNC2(chip->pdev, &rom_size);
	if (!chip->pch_phub_extrom_base_address)
		return -ENOMEM;

	FUNC1(chip, mac);
	FUNC3(chip->pdev, chip->pch_phub_extrom_base_address);

	return FUNC4(buf, "%pM\n", mac);
}