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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_eth_channel {int /*<<< orphan*/  buf_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPAA2_ETH_RX_BUF_RAW_SIZE ; 
 struct sk_buff* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa2_fd const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_fd const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct dpaa2_eth_channel *ch,
					const struct dpaa2_fd *fd,
					void *fd_vaddr)
{
	struct sk_buff *skb = NULL;
	u16 fd_offset = FUNC2(fd);
	u32 fd_length = FUNC1(fd);

	ch->buf_count--;

	skb = FUNC0(fd_vaddr, DPAA2_ETH_RX_BUF_RAW_SIZE);
	if (FUNC5(!skb))
		return NULL;

	FUNC4(skb, fd_offset);
	FUNC3(skb, fd_length);

	return skb;
}