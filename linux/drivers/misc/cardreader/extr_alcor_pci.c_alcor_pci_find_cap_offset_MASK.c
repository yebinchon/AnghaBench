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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct alcor_pci_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ALCOR_CAP_START_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static int FUNC3(struct alcor_pci_priv *priv,
				     struct pci_dev *pci)
{
	int where;
	u8 val8;
	u32 val32;

	where = ALCOR_CAP_START_OFFSET;
	FUNC1(pci, where, &val8);
	if (!val8)
		return 0;

	where = (int)val8;
	while (1) {
		FUNC2(pci, where, &val32);
		if (val32 == 0xffffffff) {
			FUNC0(priv->dev, "find_cap_offset invalid value %x.\n",
				val32);
			return 0;
		}

		if ((val32 & 0xff) == 0x10) {
			FUNC0(priv->dev, "pcie cap offset: %x\n", where);
			return where;
		}

		if ((val32 & 0xff00) == 0x00) {
			FUNC0(priv->dev, "pci_find_cap_offset invalid value %x.\n",
				val32);
			break;
		}
		where = (int)((val32 >> 8) & 0xff);
	}

	return 0;
}