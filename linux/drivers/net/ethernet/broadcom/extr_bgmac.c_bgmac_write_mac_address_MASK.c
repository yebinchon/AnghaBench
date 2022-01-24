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
typedef  int u8 ;
typedef  int u32 ;
struct bgmac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGMAC_MACADDR_HIGH ; 
 int /*<<< orphan*/  BGMAC_MACADDR_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct bgmac *bgmac, u8 *addr)
{
	u32 tmp;

	tmp = (addr[0] << 24) | (addr[1] << 16) | (addr[2] << 8) | addr[3];
	FUNC0(bgmac, BGMAC_MACADDR_HIGH, tmp);
	tmp = (addr[4] << 8) | addr[5];
	FUNC0(bgmac, BGMAC_MACADDR_LOW, tmp);
}