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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct gtp_net {int /*<<< orphan*/  gtp_dev_list; } ;
struct gtp_dev {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t IFLA_GTP_FD0 ; 
 size_t IFLA_GTP_FD1 ; 
 size_t IFLA_GTP_PDP_HASHSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct gtp_dev*) ; 
 int FUNC2 (struct gtp_dev*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC3 (struct gtp_dev*) ; 
 int FUNC4 (struct gtp_dev*,int) ; 
 int /*<<< orphan*/  gtp_net_id ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct gtp_net* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,...) ; 
 struct gtp_dev* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct nlattr*) ; 
 int FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net *src_net, struct net_device *dev,
		       struct nlattr *tb[], struct nlattr *data[],
		       struct netlink_ext_ack *extack)
{
	struct gtp_dev *gtp;
	struct gtp_net *gn;
	int hashsize, err;

	if (!data[IFLA_GTP_FD0] && !data[IFLA_GTP_FD1])
		return -EINVAL;

	gtp = FUNC8(dev);

	err = FUNC2(gtp, data);
	if (err < 0)
		return err;

	if (!data[IFLA_GTP_PDP_HASHSIZE])
		hashsize = 1024;
	else
		hashsize = FUNC9(data[IFLA_GTP_PDP_HASHSIZE]);

	err = FUNC4(gtp, hashsize);
	if (err < 0)
		goto out_encap;

	err = FUNC10(dev);
	if (err < 0) {
		FUNC7(dev, "failed to register new netdev %d\n", err);
		goto out_hashtable;
	}

	gn = FUNC6(FUNC0(dev), gtp_net_id);
	FUNC5(&gtp->list, &gn->gtp_dev_list);

	FUNC7(dev, "registered new GTP interface\n");

	return 0;

out_hashtable:
	FUNC3(gtp);
out_encap:
	FUNC1(gtp);
	return err;
}