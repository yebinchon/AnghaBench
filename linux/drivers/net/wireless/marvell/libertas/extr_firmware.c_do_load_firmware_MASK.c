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
struct lbs_private {int /*<<< orphan*/  fw_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lbs_private*,void (*) (struct firmware const*,void*)) ; 

__attribute__((used)) static void FUNC3(struct lbs_private *priv, const char *name,
	void (*cb)(const struct firmware *fw, void *context))
{
	int ret;

	FUNC0("Requesting %s\n", name);
	ret = FUNC2(THIS_MODULE, true, name,
			priv->fw_device, GFP_KERNEL, priv, cb);
	if (ret) {
		FUNC0("request_firmware_nowait error %d\n", ret);
		FUNC1(priv, ret, NULL, NULL);
	}
}