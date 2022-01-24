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
struct net_device {int dummy; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _cpsw_adjust_link ; 
 scalar_t__ FUNC0 (struct cpsw_common*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_priv*,int /*<<< orphan*/ ,struct cpsw_priv*,int*) ; 
 struct cpsw_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct net_device *ndev)
{
	struct cpsw_priv	*priv = FUNC3(ndev);
	struct cpsw_common	*cpsw = priv->cpsw;
	bool			link = false;

	FUNC2(priv, _cpsw_adjust_link, priv, &link);

	if (link) {
		if (FUNC0(cpsw))
			FUNC1(cpsw);

		FUNC5(ndev);
		if (FUNC6(ndev))
			FUNC8(ndev);
	} else {
		FUNC4(ndev);
		FUNC7(ndev);
	}
}