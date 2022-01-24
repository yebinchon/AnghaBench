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
typedef  int /*<<< orphan*/  uint8_t ;
struct r852_device {scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R852_DATALINE ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 struct r852_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r852_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC3(struct nand_chip *chip)
{
	struct r852_device *dev = FUNC1(FUNC0(chip));

	/* Same problem as in r852_read_buf.... */
	if (dev->card_unstable)
		return 0;

	return FUNC2(dev, R852_DATALINE);
}