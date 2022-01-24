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
struct ip_tunnel_info {int dummy; } ;
typedef  enum ifla_geneve_df { ____Placeholder_ifla_geneve_df } ifla_geneve_df ;

/* Variables and functions */
 int GENEVE_DF_UNSET ; 
 int /*<<< orphan*/  GENEVE_UDP_PORT ; 
 int FUNC0 (struct net*,struct net_device*,struct netlink_ext_ack*,struct ip_tunnel_info*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct ip_tunnel_info*,struct nlattr**) ; 
 int FUNC2 (struct nlattr**,struct nlattr**,struct netlink_ext_ack*,struct ip_tunnel_info*,int*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_tunnel_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net *net, struct net_device *dev,
			  struct nlattr *tb[], struct nlattr *data[],
			  struct netlink_ext_ack *extack)
{
	enum ifla_geneve_df df = GENEVE_DF_UNSET;
	bool use_udp6_rx_checksums = false;
	struct ip_tunnel_info info;
	bool ttl_inherit = false;
	bool metadata = false;
	int err;

	FUNC3(&info, GENEVE_UDP_PORT);
	err = FUNC2(tb, data, extack, &info, &metadata,
			     &use_udp6_rx_checksums, &ttl_inherit, &df, false);
	if (err)
		return err;

	err = FUNC0(net, dev, extack, &info, metadata,
			       use_udp6_rx_checksums, ttl_inherit, df);
	if (err)
		return err;

	FUNC1(dev, &info, tb);

	return 0;
}