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
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_FILENAME_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 char* FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC4(struct pci_dev *pdev)
{
	struct device *dev = &pdev->dev;
	char *eeprom_name;

	FUNC0(dev, "using auto-generated eeprom filename\n");

	eeprom_name = FUNC2(dev, EEPROM_FILENAME_LEN, GFP_KERNEL);
	if (!eeprom_name)
		return NULL;

	/* this should match the pattern used in ath9k/init.c */
	FUNC3(eeprom_name, EEPROM_FILENAME_LEN, "ath9k-eeprom-pci-%s.bin",
		  FUNC1(dev));

	return eeprom_name;
}