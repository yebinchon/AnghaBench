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
struct nand_chip {int dummy; } ;
struct meson_nfc {int /*<<< orphan*/  iaddr; int /*<<< orphan*/  dev; int /*<<< orphan*/  daddr; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct meson_nfc* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *nand,
					 int infolen, int datalen,
					 enum dma_data_direction dir)
{
	struct meson_nfc *nfc = FUNC1(nand);

	FUNC0(nfc->dev, nfc->daddr, datalen, dir);
	if (infolen)
		FUNC0(nfc->dev, nfc->iaddr, infolen, dir);
}