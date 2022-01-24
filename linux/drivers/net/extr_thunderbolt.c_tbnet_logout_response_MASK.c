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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct thunderbolt_ip_status {int /*<<< orphan*/  hdr; } ;
struct tbnet {int /*<<< orphan*/  command_id; struct tb_xdomain* xd; } ;
struct tb_xdomain {int /*<<< orphan*/  remote_uuid; int /*<<< orphan*/  local_uuid; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int /*<<< orphan*/  TBIP_STATUS ; 
 int /*<<< orphan*/  TB_CFG_PKG_XDOMAIN_RESP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct thunderbolt_ip_status*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct tb_xdomain*,struct thunderbolt_ip_status*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tbnet *net, u64 route, u8 sequence,
				 u32 command_id)
{
	struct thunderbolt_ip_status reply;
	struct tb_xdomain *xd = net->xd;

	FUNC1(&reply, 0, sizeof(reply));
	FUNC3(&reply.hdr, route, sequence, xd->local_uuid,
			  xd->remote_uuid, TBIP_STATUS, sizeof(reply),
			  FUNC0(&net->command_id));
	return FUNC2(xd, &reply, sizeof(reply),
				   TB_CFG_PKG_XDOMAIN_RESP);
}