#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_data; } ;
struct net_device {int dummy; } ;
struct mac_entry {int /*<<< orphan*/  _list; int /*<<< orphan*/  addr; } ;
struct iw_request_info {int dummy; } ;
struct islpci_acl {int /*<<< orphan*/  lock; int /*<<< orphan*/  size; int /*<<< orphan*/  mac_list; } ;
struct TYPE_3__ {struct islpci_acl acl; } ;
typedef  TYPE_1__ islpci_private ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mac_entry*) ; 
 struct mac_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *ndev, struct iw_request_info *info,
		struct sockaddr *awrq, char *extra)
{
	islpci_private *priv = FUNC6(ndev);
	struct islpci_acl *acl = &priv->acl;
	struct mac_entry *entry;
	struct sockaddr *addr = (struct sockaddr *) extra;

	if (addr->sa_family != ARPHRD_ETHER)
		return -EOPNOTSUPP;

	entry = FUNC1(sizeof (struct mac_entry), GFP_KERNEL);
	if (entry == NULL)
		return -ENOMEM;

	FUNC3(entry->addr, addr->sa_data, ETH_ALEN);

	if (FUNC4(&acl->lock)) {
		FUNC0(entry);
		return -ERESTARTSYS;
	}
	FUNC2(&entry->_list, &acl->mac_list);
	acl->size++;
	FUNC5(&acl->lock);

	return 0;
}