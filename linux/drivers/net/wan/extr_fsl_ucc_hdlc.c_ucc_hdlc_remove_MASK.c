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
struct ucc_hdlc_private {TYPE_1__* utdm; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * siram; int /*<<< orphan*/ * si_regs; } ;

/* Variables and functions */
 struct ucc_hdlc_private* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ucc_hdlc_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucc_hdlc_private*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct ucc_hdlc_private *priv = FUNC0(&pdev->dev);

	FUNC4(priv);

	if (priv->utdm->si_regs) {
		FUNC2(priv->utdm->si_regs);
		priv->utdm->si_regs = NULL;
	}

	if (priv->utdm->siram) {
		FUNC2(priv->utdm->siram);
		priv->utdm->siram = NULL;
	}
	FUNC3(priv);

	FUNC1(&pdev->dev, "UCC based hdlc module removed\n");

	return 0;
}