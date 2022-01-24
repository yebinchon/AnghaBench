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
struct tmio_mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_dataend; } ;
struct renesas_sdhi {TYPE_1__ dma_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct renesas_sdhi* FUNC1 (struct tmio_mmc_host*) ; 

__attribute__((used)) static void FUNC2(struct tmio_mmc_host *host)
{
	struct renesas_sdhi *priv = FUNC1(host);

	FUNC0(&priv->dma_priv.dma_dataend);
}