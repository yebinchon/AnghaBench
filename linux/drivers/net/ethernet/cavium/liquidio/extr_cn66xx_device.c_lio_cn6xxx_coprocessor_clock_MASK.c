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
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN6XXX_MIO_RST_BOOT ; 
 int FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 

u32 FUNC1(struct octeon_device *oct)
{
	/* Bits 29:24 of MIO_RST_BOOT holds the ref. clock multiplier
	 * for SLI.
	 */
	return ((FUNC0(oct, CN6XXX_MIO_RST_BOOT) >> 24) & 0x3f) * 50;
}