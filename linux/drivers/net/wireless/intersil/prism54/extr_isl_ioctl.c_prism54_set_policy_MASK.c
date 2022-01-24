#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct islpci_acl {scalar_t__ policy; } ;
struct TYPE_5__ {scalar_t__ iw_mode; int /*<<< orphan*/  mib_sem; scalar_t__ wpa; struct islpci_acl acl; } ;
typedef  TYPE_1__ islpci_private ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_DEFAULT_MLME_MODE ; 
 int /*<<< orphan*/  DOT11_MLME_EXTENDED ; 
 int /*<<< orphan*/  DOT11_MLME_INTERMEDIATE ; 
 int /*<<< orphan*/  DOT11_OID_MLMEAUTOLEVEL ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ IW_MODE_MASTER ; 
 scalar_t__ MAC_POLICY_OPEN ; 
 scalar_t__ MAC_POLICY_REJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct islpci_acl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct net_device *ndev, struct iw_request_info *info,
		   __u32 * uwrq, char *extra)
{
	islpci_private *priv = FUNC3(ndev);
	struct islpci_acl *acl = &priv->acl;
	u32 mlmeautolevel;

	FUNC4(acl);

	if ((*uwrq < MAC_POLICY_OPEN) || (*uwrq > MAC_POLICY_REJECT))
		return -EINVAL;

	FUNC0(&priv->mib_sem);

	acl->policy = *uwrq;

	/* the ACL code needs an intermediate mlmeautolevel */
	if ((priv->iw_mode == IW_MODE_MASTER) &&
	    (acl->policy != MAC_POLICY_OPEN))
		mlmeautolevel = DOT11_MLME_INTERMEDIATE;
	else
		mlmeautolevel = CARD_DEFAULT_MLME_MODE;
	if (priv->wpa)
		mlmeautolevel = DOT11_MLME_EXTENDED;
	FUNC2(priv, DOT11_OID_MLMEAUTOLEVEL, &mlmeautolevel);
	/* restart the card with our new policy */
	if (FUNC1(priv)) {
		FUNC5(&priv->mib_sem);
		return -EIO;
	}
	FUNC5(&priv->mib_sem);

	return 0;
}