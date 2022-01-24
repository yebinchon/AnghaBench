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
struct net_device {int dummy; } ;
struct el3_private {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EL3_IO_EXTENT ; 
 int /*<<< orphan*/  EL3_ISA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct device*) ; 
 scalar_t__ WN0_IRQ ; 
 struct net_device* FUNC2 (int) ; 
 int current_tag ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct net_device*) ; 
 size_t el3_cards ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 struct net_device** el3_devs ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  id_port ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int* irq ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC14(struct device *pdev, unsigned int ndev)
{
	struct net_device *dev;
	int ioaddr, isa_irq, if_port, err;
	unsigned int iobase;
	__be16 phys_addr[3];

	while ((err = FUNC6(phys_addr)) == 2)
		;	/* Skip to next card when PnP card found */
	if (err == 1)
		return 0;

	iobase = FUNC8(8);
	if_port = iobase >> 14;
	ioaddr = 0x200 + ((iobase & 0x1f) << 4);
	if (irq[el3_cards] > 1 && irq[el3_cards] < 16)
		isa_irq = irq[el3_cards];
	else
		isa_irq = FUNC8(9) >> 12;

	dev = FUNC2(sizeof(struct el3_private));
	if (!dev)
		return -ENOMEM;

	FUNC1(dev, pdev);
	FUNC10(dev);

	if (!FUNC13(ioaddr, EL3_IO_EXTENT, "3c509-isa")) {
		FUNC7(dev);
		return 0;
	}

	/* Set the adaptor tag so that the next card can be found. */
	FUNC11(0xd0 + ++current_tag, id_port);

	/* Activate the adaptor at the EEPROM location. */
	FUNC11((ioaddr >> 4) | 0xe0, id_port);

	FUNC0(0);
	if (FUNC9(ioaddr) != 0x6d50) {
		FUNC7(dev);
		return 0;
	}

	/* Free the interrupt so that some other card can use it. */
	FUNC12(0x0f00, ioaddr + WN0_IRQ);

	FUNC5(dev, phys_addr, ioaddr, isa_irq, if_port, EL3_ISA);
	FUNC3(pdev, dev);
	if (FUNC4(dev)) {
		FUNC7(dev);
		return 0;
	}

	el3_devs[el3_cards++] = dev;
	return 1;
}