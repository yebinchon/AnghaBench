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
struct eth_fast_path_rx_cqe {int dummy; } ;
union eth_rx_cqe {struct eth_fast_path_rx_cqe fast_path_cqe; } ;
typedef  size_t u16 ;
struct bnx2x_fastpath {union eth_rx_cqe* rx_comp_ring; int /*<<< orphan*/  rx_comp_cons; } ;

/* Variables and functions */
 int FUNC0 (struct eth_fast_path_rx_cqe*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct bnx2x_fastpath *fp)
{
	u16 cons;
	union eth_rx_cqe *cqe;
	struct eth_fast_path_rx_cqe *cqe_fp;

	cons = FUNC1(fp->rx_comp_cons);
	cqe = &fp->rx_comp_ring[cons];
	cqe_fp = &cqe->fast_path_cqe;
	return FUNC0(cqe_fp);
}