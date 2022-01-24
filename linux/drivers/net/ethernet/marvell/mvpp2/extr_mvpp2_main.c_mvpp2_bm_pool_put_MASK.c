#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mvpp2_port {int /*<<< orphan*/ * bm_lock; TYPE_1__* priv; } ;
typedef  int phys_addr_t ;
typedef  int dma_addr_t ;
struct TYPE_3__ {scalar_t__ hw_version; int /*<<< orphan*/  lock_map; } ;

/* Variables and functions */
 scalar_t__ MVPP22 ; 
 int MVPP22_BM_ADDR_HIGH_PHYS_RLS_MASK ; 
 int /*<<< orphan*/  MVPP22_BM_ADDR_HIGH_RLS_REG ; 
 int MVPP22_BM_ADDR_HIGH_VIRT_RLS_MASK ; 
 int MVPP22_BM_ADDR_HIGH_VIRT_RLS_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MVPP2_BM_VIRT_RLS_REG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static inline void FUNC9(struct mvpp2_port *port, int pool,
				     dma_addr_t buf_dma_addr,
				     phys_addr_t buf_phys_addr)
{
	unsigned int thread = FUNC2(port->priv, FUNC1());
	unsigned long flags = 0;

	if (FUNC7(thread, &port->priv->lock_map))
		FUNC5(&port->bm_lock[thread], flags);

	if (port->priv->hw_version == MVPP22) {
		u32 val = 0;

		if (sizeof(dma_addr_t) == 8)
			val |= FUNC8(buf_dma_addr) &
				MVPP22_BM_ADDR_HIGH_PHYS_RLS_MASK;

		if (sizeof(phys_addr_t) == 8)
			val |= (FUNC8(buf_phys_addr)
				<< MVPP22_BM_ADDR_HIGH_VIRT_RLS_SHIFT) &
				MVPP22_BM_ADDR_HIGH_VIRT_RLS_MASK;

		FUNC3(port->priv, thread,
					   MVPP22_BM_ADDR_HIGH_RLS_REG, val);
	}

	/* MVPP2_BM_VIRT_RLS_REG is not interpreted by HW, and simply
	 * returned in the "cookie" field of the RX
	 * descriptor. Instead of storing the virtual address, we
	 * store the physical address
	 */
	FUNC3(port->priv, thread,
				   MVPP2_BM_VIRT_RLS_REG, buf_phys_addr);
	FUNC3(port->priv, thread,
				   FUNC0(pool), buf_dma_addr);

	if (FUNC7(thread, &port->priv->lock_map))
		FUNC6(&port->bm_lock[thread], flags);

	FUNC4();
}