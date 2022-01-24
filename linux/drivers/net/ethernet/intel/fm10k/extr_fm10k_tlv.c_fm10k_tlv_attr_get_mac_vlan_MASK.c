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
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

s32 FUNC2(u32 *attr, u8 *mac_addr, u16 *vlan)
{
	/* verify pointers are not NULL */
	if (!mac_addr || !attr)
		return FM10K_ERR_PARAM;

	*(__le32 *)&mac_addr[0] = FUNC1(attr[1]);
	*(__le16 *)&mac_addr[4] = FUNC0((u16)(attr[2]));
	*vlan = (u16)(attr[2] >> 16);

	return 0;
}