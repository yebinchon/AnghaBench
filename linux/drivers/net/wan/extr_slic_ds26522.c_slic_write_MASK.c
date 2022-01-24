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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLIC_THREE_LEN ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, u16 addr,
		       u8 data)
{
	u8 temp[3];

	addr = FUNC0(addr) >> 1;
	data = FUNC1(data);
	temp[0] = (u8)((addr >> 8) & 0x7f);
	temp[1] = (u8)(addr & 0xfe);
	temp[2] = data;

	/* write spi addr and value */
	FUNC2(spi, &temp[0], SLIC_THREE_LEN);
}