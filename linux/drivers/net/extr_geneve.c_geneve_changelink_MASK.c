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
struct ip_tunnel_info {int /*<<< orphan*/  dst_cache; } ;
struct geneve_sock {int dummy; } ;
struct geneve_dev {int collect_md; int use_udp6_rx_checksums; int ttl_inherit; struct ip_tunnel_info info; } ;
typedef  int /*<<< orphan*/  info ;
typedef  enum ifla_geneve_df { ____Placeholder_ifla_geneve_df } ifla_geneve_df ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_tunnel_info*,struct ip_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct ip_tunnel_info*,struct nlattr**) ; 
 int FUNC3 (struct nlattr**,struct nlattr**,struct netlink_ext_ack*,struct ip_tunnel_info*,int*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct geneve_dev*,struct geneve_sock**,struct geneve_sock**) ; 
 int /*<<< orphan*/  FUNC5 (struct geneve_dev*,struct geneve_sock*,struct geneve_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_tunnel_info*,struct ip_tunnel_info*,int) ; 
 struct geneve_dev* FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct nlattr *tb[],
			     struct nlattr *data[],
			     struct netlink_ext_ack *extack)
{
	struct geneve_dev *geneve = FUNC7(dev);
	struct geneve_sock *gs4, *gs6;
	struct ip_tunnel_info info;
	bool metadata;
	bool use_udp6_rx_checksums;
	enum ifla_geneve_df df;
	bool ttl_inherit;
	int err;

	/* If the geneve device is configured for metadata (or externally
	 * controlled, for example, OVS), then nothing can be changed.
	 */
	if (geneve->collect_md)
		return -EOPNOTSUPP;

	/* Start with the existing info. */
	FUNC6(&info, &geneve->info, sizeof(info));
	metadata = geneve->collect_md;
	use_udp6_rx_checksums = geneve->use_udp6_rx_checksums;
	ttl_inherit = geneve->ttl_inherit;
	err = FUNC3(tb, data, extack, &info, &metadata,
			     &use_udp6_rx_checksums, &ttl_inherit, &df, true);
	if (err)
		return err;

	if (!FUNC1(&geneve->info, &info)) {
		FUNC0(&info.dst_cache);
		FUNC2(dev, &info, tb);
	}

	FUNC4(geneve, &gs4, &gs6);
	geneve->info = info;
	geneve->collect_md = metadata;
	geneve->use_udp6_rx_checksums = use_udp6_rx_checksums;
	geneve->ttl_inherit = ttl_inherit;
	FUNC5(geneve, gs4, gs6);

	return 0;
}