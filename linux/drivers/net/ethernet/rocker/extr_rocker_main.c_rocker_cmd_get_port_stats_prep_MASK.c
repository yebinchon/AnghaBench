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
struct rocker_tlv {int dummy; } ;
struct rocker_port {int /*<<< orphan*/  pport; } ;
struct rocker_desc_info {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ROCKER_TLV_CMD_INFO ; 
 int /*<<< orphan*/  ROCKER_TLV_CMD_PORT_STATS_PPORT ; 
 int /*<<< orphan*/  ROCKER_TLV_CMD_TYPE ; 
 int /*<<< orphan*/  ROCKER_TLV_CMD_TYPE_GET_PORT_STATS ; 
 int /*<<< orphan*/  FUNC0 (struct rocker_desc_info*,struct rocker_tlv*) ; 
 struct rocker_tlv* FUNC1 (struct rocker_desc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rocker_desc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rocker_desc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(const struct rocker_port *rocker_port,
			       struct rocker_desc_info *desc_info,
			       void *priv)
{
	struct rocker_tlv *cmd_stats;

	if (FUNC2(desc_info, ROCKER_TLV_CMD_TYPE,
			       ROCKER_TLV_CMD_TYPE_GET_PORT_STATS))
		return -EMSGSIZE;

	cmd_stats = FUNC1(desc_info, ROCKER_TLV_CMD_INFO);
	if (!cmd_stats)
		return -EMSGSIZE;

	if (FUNC3(desc_info, ROCKER_TLV_CMD_PORT_STATS_PPORT,
			       rocker_port->pport))
		return -EMSGSIZE;

	FUNC0(desc_info, cmd_stats);

	return 0;
}