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
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FM10K_ERR_PARAM ; 
 size_t FUNC0 (int) ; 
 int FM10K_TLV_HDR_LEN ; 
 scalar_t__ FUNC1 (int) ; 
 int FM10K_TLV_LEN_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 

s32 FUNC4(u32 *msg, u16 attr_id,
				const u8 *mac_addr, u16 vlan)
{
	u32 len = ETH_ALEN << FM10K_TLV_LEN_SHIFT;
	u32 *attr;

	/* verify pointers are not NULL */
	if (!msg || !mac_addr)
		return FM10K_ERR_PARAM;

	attr = &msg[FUNC0(*msg)];

	/* record attribute header, update message length */
	attr[0] = len | attr_id;

	/* copy value into local variable and then write to msg */
	attr[1] = FUNC3(*(const __le32 *)&mac_addr[0]);
	attr[2] = FUNC2(*(const __le16 *)&mac_addr[4]);
	attr[2] |= (u32)vlan << 16;

	/* add header length to length */
	len += FM10K_TLV_HDR_LEN << FM10K_TLV_LEN_SHIFT;
	*msg += FUNC1(len);

	return 0;
}