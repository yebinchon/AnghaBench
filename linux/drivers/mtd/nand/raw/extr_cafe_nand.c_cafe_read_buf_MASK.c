#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {int dummy; } ;
struct cafe_priv {scalar_t__ datalen; TYPE_1__* pdev; scalar_t__ mmio; scalar_t__ dmabuf; scalar_t__ usedma; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CAFE_NAND_READ_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 struct cafe_priv* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip, uint8_t *buf, int len)
{
	struct cafe_priv *cafe = FUNC3(chip);

	if (cafe->usedma)
		FUNC1(buf, cafe->dmabuf + cafe->datalen, len);
	else
		FUNC2(buf, cafe->mmio + CAFE_NAND_READ_DATA + cafe->datalen, len);

	FUNC0(&cafe->pdev->dev, "Copy 0x%x bytes from position 0x%x in read buffer.\n",
		  len, cafe->datalen);
	cafe->datalen += len;
}