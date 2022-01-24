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
struct brcmf_p2p_info {int* dev_addr; int* int_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcmf_p2p_info *p2p, u8 *dev_addr)
{
	bool random_addr = false;

	if (!dev_addr || FUNC1(dev_addr))
		random_addr = true;

	/* Generate the P2P Device Address obtaining a random ethernet
	 * address with the locally administered bit set.
	 */
	if (random_addr)
		FUNC0(p2p->dev_addr);
	else
		FUNC2(p2p->dev_addr, dev_addr, ETH_ALEN);

	/* Generate the P2P Interface Address.  If the discovery and connection
	 * BSSCFGs need to simultaneously co-exist, then this address must be
	 * different from the P2P Device Address, but also locally administered.
	 */
	FUNC2(p2p->int_addr, p2p->dev_addr, ETH_ALEN);
	p2p->int_addr[0] |= 0x02;
	p2p->int_addr[4] ^= 0x80;
}