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
struct lbs_private {void* txpower_max; void* txpower_min; void* txpower_cur; int /*<<< orphan*/  current_addr; } ;
typedef  void* s16 ;

/* Variables and functions */
 int /*<<< orphan*/  SNMP_MIB_OID_11D_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lbs_private*,void**,void**,void**) ; 
 int FUNC2 (struct lbs_private*) ; 
 int FUNC3 (struct lbs_private*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct lbs_private*) ; 

__attribute__((used)) static int FUNC5(struct lbs_private *priv)
{
	int ret = -1;
	s16 curlevel = 0, minlevel = 0, maxlevel = 0;

	/* Read MAC address from firmware */
	FUNC0(priv->current_addr);
	ret = FUNC4(priv);
	if (ret)
		goto done;

	/* Read power levels if available */
	ret = FUNC1(priv, &curlevel, &minlevel, &maxlevel);
	if (ret == 0) {
		priv->txpower_cur = curlevel;
		priv->txpower_min = minlevel;
		priv->txpower_max = maxlevel;
	}

	/* Send cmd to FW to enable 11D function */
	ret = FUNC3(priv, SNMP_MIB_OID_11D_ENABLE, 1);
	if (ret)
		goto done;

	ret = FUNC2(priv);
done:
	return ret;
}