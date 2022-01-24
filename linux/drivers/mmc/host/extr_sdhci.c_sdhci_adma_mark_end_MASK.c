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
struct sdhci_adma2_64_desc {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMA2_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *desc)
{
	struct sdhci_adma2_64_desc *dma_desc = desc;

	/* 32-bit and 64-bit descriptors have 'cmd' in same position */
	dma_desc->cmd |= FUNC0(ADMA2_END);
}