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
typedef  int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ndmsg {int ndm_state; } ;
struct i40e_pf {int flags; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_pf* back; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int I40E_FLAG_SRIOV_ENABLED ; 
 int NLM_F_EXCL ; 
 int NUD_PERMANENT ; 
 int FUNC0 (struct net_device*,unsigned char const*) ; 
 int FUNC1 (struct net_device*,unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 scalar_t__ FUNC3 (unsigned char const*) ; 
 scalar_t__ FUNC4 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct i40e_netdev_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ndmsg *ndm, struct nlattr *tb[],
			    struct net_device *dev,
			    const unsigned char *addr, u16 vid,
			    u16 flags,
			    struct netlink_ext_ack *extack)
{
	struct i40e_netdev_priv *np = FUNC6(dev);
	struct i40e_pf *pf = np->vsi->back;
	int err = 0;

	if (!(pf->flags & I40E_FLAG_SRIOV_ENABLED))
		return -EOPNOTSUPP;

	if (vid) {
		FUNC7("%s: vlans aren't supported yet for dev_uc|mc_add()\n", dev->name);
		return -EINVAL;
	}

	/* Hardware does not support aging addresses so if a
	 * ndm_state is given only allow permanent addresses
	 */
	if (ndm->ndm_state && !(ndm->ndm_state & NUD_PERMANENT)) {
		FUNC5(dev, "FDB only supports static addresses\n");
		return -EINVAL;
	}

	if (FUNC4(addr) || FUNC2(addr))
		err = FUNC1(dev, addr);
	else if (FUNC3(addr))
		err = FUNC0(dev, addr);
	else
		err = -EINVAL;

	/* Only return duplicate errors if NLM_F_EXCL is set */
	if (err == -EEXIST && !(flags & NLM_F_EXCL))
		err = 0;

	return err;
}