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
typedef  int u8 ;
typedef  int u16 ;
struct sis190_private {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {void** dev_addr; } ;

/* Variables and functions */
 unsigned int FUNC0 (int const*) ; 
 int EIO ; 
 unsigned int ETH_ALEN ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_SI ; 
 void* FUNC1 (int) ; 
 struct sis190_private* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct sis190_private*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sis190_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev,
					struct net_device *dev)
{
	static const u16 ids[] = { 0x0965, 0x0966, 0x0968 };
	struct sis190_private *tp = FUNC2(dev);
	struct pci_dev *isa_bridge;
	u8 reg, tmp8;
	unsigned int i;

	if (FUNC3(tp))
		FUNC10("%s: Read MAC address from APC\n", FUNC7(pdev));

	for (i = 0; i < FUNC0(ids); i++) {
		isa_bridge = FUNC6(PCI_VENDOR_ID_SI, ids[i], NULL);
		if (isa_bridge)
			break;
	}

	if (!isa_bridge) {
		if (FUNC3(tp))
			FUNC10("%s: Can not find ISA bridge\n",
				FUNC7(pdev));
		return -EIO;
	}

	/* Enable port 78h & 79h to access APC Registers. */
	FUNC8(isa_bridge, 0x48, &tmp8);
	reg = (tmp8 & ~0x02);
	FUNC9(isa_bridge, 0x48, reg);
	FUNC12(50);
	FUNC8(isa_bridge, 0x48, &reg);

        for (i = 0; i < ETH_ALEN; i++) {
                FUNC4(0x9 + i, 0x78);
                dev->dev_addr[i] = FUNC1(0x79);
        }

	FUNC4(0x12, 0x78);
	reg = FUNC1(0x79);

	FUNC11(tp, reg);

	/* Restore the value to ISA Bridge */
	FUNC9(isa_bridge, 0x48, tmp8);
	FUNC5(isa_bridge);

	return 0;
}