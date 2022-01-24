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
struct lbs_private {struct firmware const* helper_fw; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,struct firmware const*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 

__attribute__((used)) static void FUNC3(const struct firmware *firmware, void *context)
{
	struct lbs_private *priv = context;

	if (!firmware) {
		/* Failed to find firmware: try next table entry */
		FUNC1(priv);
		return;
	}

	/* Firmware found! */
	FUNC0(priv, 0, priv->helper_fw, firmware);
	if (priv->helper_fw) {
		FUNC2 (priv->helper_fw);
		priv->helper_fw = NULL;
	}
	FUNC2 (firmware);
}