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
struct pcmcia_device {struct pcan_pccard* priv; int /*<<< orphan*/  irq; } ;
struct pcan_pccard {int /*<<< orphan*/  ioport_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pcan_pccard*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcan_pccard*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcan_pccard*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcan_pccard*) ; 

__attribute__((used)) static void FUNC5(struct pcmcia_device *pdev)
{
	struct pcan_pccard *card = pdev->priv;

	if (!card)
		return;

	FUNC0(pdev->irq, card);
	FUNC4(card);

	FUNC3(card);

	FUNC1(card->ioport_addr);

	FUNC2(card);
	pdev->priv = NULL;
}