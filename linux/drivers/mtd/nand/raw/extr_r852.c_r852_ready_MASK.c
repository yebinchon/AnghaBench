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
struct r852_device {int dummy; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R852_CARD_STA ; 
 int R852_CARD_STA_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 struct r852_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct r852_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip)
{
	struct r852_device *dev = FUNC1(FUNC0(chip));
	return !(FUNC2(dev, R852_CARD_STA) & R852_CARD_STA_BUSY);
}