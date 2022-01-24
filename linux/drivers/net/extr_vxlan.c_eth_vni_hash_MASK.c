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
typedef  int u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FDB_HASH_SIZE ; 
 int FUNC0 (int*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_salt ; 

__attribute__((used)) static u32 FUNC2(const unsigned char *addr, __be32 vni)
{
	/* use 1 byte of OUI and 3 bytes of NIC */
	u32 key = FUNC0((u32 *)(addr + 2));

	return FUNC1(key, vni, vxlan_salt) & (FDB_HASH_SIZE - 1);
}