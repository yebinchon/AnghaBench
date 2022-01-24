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
struct spi_nor {int flags; } ;

/* Variables and functions */
 int SNOR_F_READY_XSR_RDY ; 
 int SNOR_F_USE_FSR ; 
 int FUNC0 (struct spi_nor*) ; 
 int FUNC1 (struct spi_nor*) ; 
 int FUNC2 (struct spi_nor*) ; 

__attribute__((used)) static int FUNC3(struct spi_nor *nor)
{
	int sr, fsr;

	if (nor->flags & SNOR_F_READY_XSR_RDY)
		sr = FUNC0(nor);
	else
		sr = FUNC2(nor);
	if (sr < 0)
		return sr;
	fsr = nor->flags & SNOR_F_USE_FSR ? FUNC1(nor) : 1;
	if (fsr < 0)
		return fsr;
	return sr && fsr;
}