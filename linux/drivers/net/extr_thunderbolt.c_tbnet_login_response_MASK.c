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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct thunderbolt_ip_login_response {int /*<<< orphan*/  receiver_mac_len; int /*<<< orphan*/  receiver_mac; int /*<<< orphan*/  hdr; } ;
struct tbnet {TYPE_1__* dev; struct tb_xdomain* xd; } ;
struct tb_xdomain {int /*<<< orphan*/  remote_uuid; int /*<<< orphan*/  local_uuid; } ;
typedef  int /*<<< orphan*/  reply ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  TBIP_LOGIN_RESPONSE ; 
 int /*<<< orphan*/  TB_CFG_PKG_XDOMAIN_RESP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thunderbolt_ip_login_response*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct tb_xdomain*,struct thunderbolt_ip_login_response*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tbnet *net, u64 route, u8 sequence,
				u32 command_id)
{
	struct thunderbolt_ip_login_response reply;
	struct tb_xdomain *xd = net->xd;

	FUNC1(&reply, 0, sizeof(reply));
	FUNC3(&reply.hdr, route, sequence, xd->local_uuid,
			  xd->remote_uuid, TBIP_LOGIN_RESPONSE, sizeof(reply),
			  command_id);
	FUNC0(reply.receiver_mac, net->dev->dev_addr, ETH_ALEN);
	reply.receiver_mac_len = ETH_ALEN;

	return FUNC2(xd, &reply, sizeof(reply),
				   TB_CFG_PKG_XDOMAIN_RESP);
}