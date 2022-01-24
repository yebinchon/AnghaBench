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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int max_mtu; int needed_headroom; } ;
struct net {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_tunnel_info {int /*<<< orphan*/  dst_cache; } ;
struct geneve_net {int /*<<< orphan*/  geneve_list; } ;
struct geneve_dev {int collect_md; int use_udp6_rx_checksums; int ttl_inherit; int df; int /*<<< orphan*/  next; struct ip_tunnel_info info; struct net_device* dev; struct net* net; } ;
typedef  enum ifla_geneve_df { ____Placeholder_ifla_geneve_df } ifla_geneve_df ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EBUSY ; 
 int EINVAL ; 
 int EPERM ; 
 int ETH_HLEN ; 
 int GENEVE_BASE_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct geneve_dev* FUNC2 (struct geneve_net*,struct ip_tunnel_info const*,int*,int*) ; 
 int /*<<< orphan*/  geneve_net_id ; 
 scalar_t__ FUNC3 (struct ip_tunnel_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_tunnel_info const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct geneve_net* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 struct geneve_dev* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net *net, struct net_device *dev,
			    struct netlink_ext_ack *extack,
			    const struct ip_tunnel_info *info,
			    bool metadata, bool ipv6_rx_csum,
			    bool ttl_inherit, enum ifla_geneve_df df)
{
	struct geneve_net *gn = FUNC6(net, geneve_net_id);
	struct geneve_dev *t, *geneve = FUNC7(dev);
	bool tun_collect_md, tun_on_same_port;
	int err, encap_len;

	if (metadata && !FUNC4(info)) {
		FUNC0(extack,
			       "Device is externally controlled, so attributes (VNI, Port, and so on) must not be specified");
		return -EINVAL;
	}

	geneve->net = net;
	geneve->dev = dev;

	t = FUNC2(gn, info, &tun_on_same_port, &tun_collect_md);
	if (t)
		return -EBUSY;

	/* make enough headroom for basic scenario */
	encap_len = GENEVE_BASE_HLEN + ETH_HLEN;
	if (!metadata && FUNC3(info) == AF_INET) {
		encap_len += sizeof(struct iphdr);
		dev->max_mtu -= sizeof(struct iphdr);
	} else {
		encap_len += sizeof(struct ipv6hdr);
		dev->max_mtu -= sizeof(struct ipv6hdr);
	}
	dev->needed_headroom = encap_len + ETH_HLEN;

	if (metadata) {
		if (tun_on_same_port) {
			FUNC0(extack,
				       "There can be only one externally controlled device on a destination port");
			return -EPERM;
		}
	} else {
		if (tun_collect_md) {
			FUNC0(extack,
				       "There already exists an externally controlled device on this destination port");
			return -EPERM;
		}
	}

	FUNC1(&geneve->info.dst_cache);
	geneve->info = *info;
	geneve->collect_md = metadata;
	geneve->use_udp6_rx_checksums = ipv6_rx_csum;
	geneve->ttl_inherit = ttl_inherit;
	geneve->df = df;

	err = FUNC8(dev);
	if (err)
		return err;

	FUNC5(&geneve->next, &gn->geneve_list);
	return 0;
}