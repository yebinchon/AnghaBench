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
struct skb_shared_info {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct qm_fd {int /*<<< orphan*/  bpid; } ;
struct dpaa_priv {scalar_t__ rx_headroom; } ;
struct dpaa_bp {scalar_t__ size; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  SMP_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,char*) ; 
 struct sk_buff* FUNC4 (void*,scalar_t__) ; 
 struct dpaa_bp* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qm_fd const*) ; 
 int /*<<< orphan*/  FUNC8 (struct qm_fd const*) ; 
 scalar_t__ FUNC9 (struct qm_fd const*) ; 
 int /*<<< orphan*/  FUNC10 (struct dpaa_priv const*,struct qm_fd const*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC14(const struct dpaa_priv *priv,
					const struct qm_fd *fd)
{
	ssize_t fd_off = FUNC9(fd);
	dma_addr_t addr = FUNC7(fd);
	struct dpaa_bp *dpaa_bp;
	struct sk_buff *skb;
	void *vaddr;

	vaddr = FUNC6(addr);
	FUNC2(!FUNC0((unsigned long)vaddr, SMP_CACHE_BYTES));

	dpaa_bp = FUNC5(fd->bpid);
	if (!dpaa_bp)
		goto free_buffer;

	skb = FUNC4(vaddr, dpaa_bp->size +
			FUNC1(sizeof(struct skb_shared_info)));
	if (FUNC3(!skb, "Build skb failure on Rx\n"))
		goto free_buffer;
	FUNC2(fd_off != priv->rx_headroom);
	FUNC13(skb, fd_off);
	FUNC12(skb, FUNC8(fd));

	skb->ip_summed = FUNC10(priv, fd);

	return skb;

free_buffer:
	FUNC11(vaddr);
	return NULL;
}