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
struct lbs_private {TYPE_1__* fw_iter; struct firmware const* helper_fw; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {scalar_t__ fwname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lbs_private*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct firmware const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  main_firmware_cb ; 

__attribute__((used)) static void FUNC3(const struct firmware *firmware, void *context)
{
	struct lbs_private *priv = context;

	if (!firmware) {
		/* Failed to find firmware: try next table entry */
		FUNC2(priv);
		return;
	}

	/* Firmware found! */
	if (priv->fw_iter->fwname) {
		priv->helper_fw = firmware;
		FUNC0(priv, priv->fw_iter->fwname, main_firmware_cb);
	} else {
		/* No main firmware needed for this helper --> success! */
		FUNC1(priv, 0, firmware, NULL);
	}
}