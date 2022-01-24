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
struct pci_dev {int dummy; } ;
struct lpc_ich_priv {int gctrl_save; int /*<<< orphan*/  gctrl; } ;

/* Variables and functions */
 struct lpc_ich_priv* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	struct lpc_ich_priv *priv = FUNC0(dev);
	u8 reg_save;

	FUNC1(dev, priv->gctrl, &reg_save);
	FUNC2(dev, priv->gctrl, reg_save | 0x10);
	priv->gctrl_save = reg_save;
}