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
struct pci_dev {int dummy; } ;
struct lpc_ich_priv {int abase_save; int actrl_pbase_save; int gctrl_save; int /*<<< orphan*/  gctrl; int /*<<< orphan*/  actrl_pbase; int /*<<< orphan*/  abase; } ;

/* Variables and functions */
 struct lpc_ich_priv* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	struct lpc_ich_priv *priv = FUNC0(dev);

	if (priv->abase_save >= 0) {
		FUNC1(dev, priv->abase, priv->abase_save);
		priv->abase_save = -1;
	}

	if (priv->actrl_pbase_save >= 0) {
		FUNC1(dev, priv->actrl_pbase,
			priv->actrl_pbase_save);
		priv->actrl_pbase_save = -1;
	}

	if (priv->gctrl_save >= 0) {
		FUNC1(dev, priv->gctrl, priv->gctrl_save);
		priv->gctrl_save = -1;
	}
}