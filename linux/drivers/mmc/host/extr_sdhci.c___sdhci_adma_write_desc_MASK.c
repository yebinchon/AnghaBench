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
struct sdhci_host {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* adma_write_desc ) (struct sdhci_host*,void**,int /*<<< orphan*/ ,int,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,void**,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,void**,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct sdhci_host *host,
					   void **desc, dma_addr_t addr,
					   int len, unsigned int cmd)
{
	if (host->ops->adma_write_desc)
		host->ops->adma_write_desc(host, desc, addr, len, cmd);
	else
		FUNC0(host, desc, addr, len, cmd);
}