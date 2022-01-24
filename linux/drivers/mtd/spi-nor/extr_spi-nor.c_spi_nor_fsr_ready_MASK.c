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
struct spi_nor {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int FSR_E_ERR ; 
 int FSR_PT_ERR ; 
 int FSR_P_ERR ; 
 int FSR_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_nor*) ; 

__attribute__((used)) static int FUNC3(struct spi_nor *nor)
{
	int fsr = FUNC1(nor);
	if (fsr < 0)
		return fsr;

	if (fsr & (FSR_E_ERR | FSR_P_ERR)) {
		if (fsr & FSR_E_ERR)
			FUNC0(nor->dev, "Erase operation failed.\n");
		else
			FUNC0(nor->dev, "Program operation failed.\n");

		if (fsr & FSR_PT_ERR)
			FUNC0(nor->dev,
			"Attempted to modify a protected sector.\n");

		FUNC2(nor);
		return -EIO;
	}

	return fsr & FSR_READY;
}