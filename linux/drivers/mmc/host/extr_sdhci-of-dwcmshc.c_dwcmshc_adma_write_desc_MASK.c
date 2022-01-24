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
struct sdhci_host {int dummy; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int SZ_128M ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,void**,int,int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host, void **desc,
				    dma_addr_t addr, int len, unsigned int cmd)
{
	int tmplen, offset;

	if (FUNC1(!len || FUNC0(addr, len))) {
		FUNC2(host, desc, addr, len, cmd);
		return;
	}

	offset = addr & (SZ_128M - 1);
	tmplen = SZ_128M - offset;
	FUNC2(host, desc, addr, tmplen, cmd);

	addr += tmplen;
	len -= tmplen;
	FUNC2(host, desc, addr, len, cmd);
}