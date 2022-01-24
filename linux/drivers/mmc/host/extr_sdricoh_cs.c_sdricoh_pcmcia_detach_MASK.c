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
struct sdricoh_host {int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  iobase; } ;
struct pcmcia_device {int /*<<< orphan*/  dev; struct mmc_host* priv; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 struct sdricoh_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC7(struct pcmcia_device *link)
{
	struct mmc_host *mmc = link->priv;

	FUNC0(&link->dev, "detach\n");

	/* remove mmc host */
	if (mmc) {
		struct sdricoh_host *host = FUNC2(mmc);
		FUNC3(mmc);
		FUNC5(host->pci_dev, host->iobase);
		FUNC4(host->pci_dev);
		FUNC1(mmc);
	}
	FUNC6(link);

}