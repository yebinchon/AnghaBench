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
struct stmmac_priv {int /*<<< orphan*/  dev; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_SETUP_CLSFLOWER 129 
#define  TC_SETUP_CLSU32 128 
 int /*<<< orphan*/  FUNC0 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct stmmac_priv*) ; 
 int FUNC2 (struct stmmac_priv*,struct stmmac_priv*,void*) ; 
 int FUNC3 (struct stmmac_priv*,struct stmmac_priv*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC5(enum tc_setup_type type, void *type_data,
				    void *cb_priv)
{
	struct stmmac_priv *priv = cb_priv;
	int ret = -EOPNOTSUPP;

	if (!FUNC4(priv->dev, type_data))
		return ret;

	FUNC0(priv);

	switch (type) {
	case TC_SETUP_CLSU32:
		ret = FUNC3(priv, priv, type_data);
		break;
	case TC_SETUP_CLSFLOWER:
		ret = FUNC2(priv, priv, type_data);
		break;
	default:
		break;
	}

	FUNC1(priv);
	return ret;
}