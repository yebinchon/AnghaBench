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
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct ipw_priv* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct ipw_priv *priv = FUNC2(pdev);

	/* Take down the device; powers it off, etc. */
	FUNC0(priv);

	FUNC1(pdev);
}