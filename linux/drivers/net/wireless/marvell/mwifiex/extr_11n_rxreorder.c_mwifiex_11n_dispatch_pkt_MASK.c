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
struct sk_buff {int dummy; } ;
struct mwifiex_private {scalar_t__ bss_role; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ; 
 int FUNC0 (struct mwifiex_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct mwifiex_private*,struct sk_buff*) ; 
 int FUNC3 (struct mwifiex_private*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct mwifiex_private *priv,
				    struct sk_buff *payload)
{

	int ret;

	if (!payload) {
		FUNC1(priv->adapter, INFO, "info: fw drop data\n");
		return 0;
	}

	ret = FUNC0(priv, payload);
	if (!ret)
		return 0;

	if (priv->bss_role == MWIFIEX_BSS_ROLE_UAP)
		return FUNC2(priv, payload);

	return FUNC3(priv, payload);
}