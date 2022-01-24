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
struct tps65912 {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 struct tps65912* FUNC0 (struct spi_device*) ; 
 int FUNC1 (struct tps65912*) ; 

__attribute__((used)) static int FUNC2(struct spi_device *spi)
{
	struct tps65912 *tps = FUNC0(spi);

	return FUNC1(tps);
}