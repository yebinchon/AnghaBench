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
struct rocker_port {int dummy; } ;
struct rocker_desc_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ ETH_ALEN ; 
 size_t ROCKER_TLV_CMD_INFO ; 
 int /*<<< orphan*/  ROCKER_TLV_CMD_MAX ; 
 size_t ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR ; 
 int /*<<< orphan*/  ROCKER_TLV_CMD_PORT_SETTINGS_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker_tlv const*) ; 
 scalar_t__ FUNC2 (struct rocker_tlv const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rocker_tlv const**,int /*<<< orphan*/ ,struct rocker_desc_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker_tlv const**,int /*<<< orphan*/ ,struct rocker_tlv const*) ; 

__attribute__((used)) static int
FUNC5(const struct rocker_port *rocker_port,
					  const struct rocker_desc_info *desc_info,
					  void *priv)
{
	unsigned char *macaddr = priv;
	const struct rocker_tlv *attrs[ROCKER_TLV_CMD_MAX + 1];
	const struct rocker_tlv *info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_MAX + 1];
	const struct rocker_tlv *attr;

	FUNC3(attrs, ROCKER_TLV_CMD_MAX, desc_info);
	if (!attrs[ROCKER_TLV_CMD_INFO])
		return -EIO;

	FUNC4(info_attrs, ROCKER_TLV_CMD_PORT_SETTINGS_MAX,
				attrs[ROCKER_TLV_CMD_INFO]);
	attr = info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR];
	if (!attr)
		return -EIO;

	if (FUNC2(attr) != ETH_ALEN)
		return -EINVAL;

	FUNC0(macaddr, FUNC1(attr));
	return 0;
}