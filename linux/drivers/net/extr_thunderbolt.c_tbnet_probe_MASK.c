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
struct thunderbolt_ip_frame_header {int dummy; } ;
struct TYPE_3__ {struct tbnet* data; int /*<<< orphan*/  callback; int /*<<< orphan*/ * uuid; } ;
struct tbnet {TYPE_1__ handler; int /*<<< orphan*/  napi; struct tb_xdomain* xd; struct net_device* dev; struct tb_service* svc; int /*<<< orphan*/  frame_id; int /*<<< orphan*/  command_id; int /*<<< orphan*/  connection_lock; int /*<<< orphan*/  disconnect_work; int /*<<< orphan*/  connected_work; int /*<<< orphan*/  login_work; } ;
struct tb_xdomain {int dummy; } ;
struct tb_service_id {int dummy; } ;
struct tb_service {int /*<<< orphan*/  dev; } ;
struct net_device {int hw_features; int features; int hard_header_len; scalar_t__ max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int NETIF_F_ALL_TSO ; 
 int NETIF_F_GRO ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ TBNET_MAX_MTU ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct tbnet* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 struct tb_xdomain* FUNC12 (struct tb_service*) ; 
 int /*<<< orphan*/  FUNC13 (struct tb_service*,struct tbnet*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  tbnet_connected_work ; 
 int /*<<< orphan*/  tbnet_disconnect_work ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  tbnet_handle_packet ; 
 int /*<<< orphan*/  tbnet_login_work ; 
 int /*<<< orphan*/  tbnet_netdev_ops ; 
 int /*<<< orphan*/  tbnet_poll ; 
 int /*<<< orphan*/  tbnet_svc_uuid ; 

__attribute__((used)) static int FUNC16(struct tb_service *svc, const struct tb_service_id *id)
{
	struct tb_xdomain *xd = FUNC12(svc);
	struct net_device *dev;
	struct tbnet *net;
	int ret;

	dev = FUNC3(sizeof(*net));
	if (!dev)
		return -ENOMEM;

	FUNC2(dev, &svc->dev);

	net = FUNC7(dev);
	FUNC0(&net->login_work, tbnet_login_work);
	FUNC1(&net->connected_work, tbnet_connected_work);
	FUNC1(&net->disconnect_work, tbnet_disconnect_work);
	FUNC6(&net->connection_lock);
	FUNC4(&net->command_id, 0);
	FUNC4(&net->frame_id, 0);
	net->svc = svc;
	net->dev = dev;
	net->xd = xd;

	FUNC15(dev);

	FUNC10(dev->name, "thunderbolt%d");
	dev->netdev_ops = &tbnet_netdev_ops;

	/* ThunderboltIP takes advantage of TSO packets but instead of
	 * segmenting them we just split the packet into Thunderbolt
	 * frames (maximum payload size of each frame is 4084 bytes) and
	 * calculate checksum over the whole packet here.
	 *
	 * The receiving side does the opposite if the host OS supports
	 * LRO, otherwise it needs to split the large packet into MTU
	 * sized smaller packets.
	 *
	 * In order to receive large packets from the networking stack,
	 * we need to announce support for most of the offloading
	 * features here.
	 */
	dev->hw_features = NETIF_F_SG | NETIF_F_ALL_TSO | NETIF_F_GRO |
			   NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
	dev->features = dev->hw_features | NETIF_F_HIGHDMA;
	dev->hard_header_len += sizeof(struct thunderbolt_ip_frame_header);

	FUNC8(dev, &net->napi, tbnet_poll, NAPI_POLL_WEIGHT);

	/* MTU range: 68 - 65522 */
	dev->min_mtu = ETH_MIN_MTU;
	dev->max_mtu = TBNET_MAX_MTU - ETH_HLEN;

	net->handler.uuid = &tbnet_svc_uuid;
	net->handler.callback = tbnet_handle_packet,
	net->handler.data = net;
	FUNC11(&net->handler);

	FUNC13(svc, net);

	ret = FUNC9(dev);
	if (ret) {
		FUNC14(&net->handler);
		FUNC5(dev);
		return ret;
	}

	return 0;
}