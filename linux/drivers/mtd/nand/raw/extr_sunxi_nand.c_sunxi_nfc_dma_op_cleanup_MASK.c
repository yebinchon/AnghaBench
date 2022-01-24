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
struct sunxi_nfc {scalar_t__ regs; int /*<<< orphan*/  dev; } ;
struct scatterlist {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int NFC_RAM_METHOD ; 
 scalar_t__ NFC_REG_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scatterlist*,int,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sunxi_nfc *nfc,
				     enum dma_data_direction ddir,
				     struct scatterlist *sg)
{
	FUNC0(nfc->dev, sg, 1, ddir);
	FUNC2(FUNC1(nfc->regs + NFC_REG_CTL) & ~NFC_RAM_METHOD,
	       nfc->regs + NFC_REG_CTL);
}